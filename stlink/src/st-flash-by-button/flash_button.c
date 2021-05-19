#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <signal.h>
#include <wiringPi.h>
#include <stlink.h>
#include <unistd.h>
#define button 2
#define DEBUG_LOG_LEVEL 100
#define STND_LOG_LEVEL  50
#define ENABLE_OPT      1
#define FLASH_ADDR      (sl->flash_base) 
/**/
enum flash_cmd {FLASH_CMD_NONE = 0, FLASH_CMD_WRITE = 1, FLASH_CMD_READ = 2, FLASH_CMD_ERASE = 3, CMD_RESET = 4};
enum flash_format {FLASH_FORMAT_BINARY = 0, FLASH_FORMAT_IHEX = 1};
enum flash_area {FLASH_MAIN_MEMORY = 0, FLASH_SYSTEM_MEMORY = 1, FLASH_OTP = 2, FLASH_OPTION_BYTES = 3, FLASH_OPTION_BYTES_BOOT_ADD = 4, FLASH_OPTCR = 5, FLASH_OPTCR1 = 6};
typedef struct flash_opts {
    enum flash_cmd cmd;
    uint8_t serial[STLINK_SERIAL_BUFFER_SIZE];
    const char* filename;
    stm32_addr_t addr;
    size_t size;
    int reset;
    int log_level;
    enum flash_format format;
    enum flash_area area;
    uint32_t val;
    size_t flash_size;  // --flash=n[k, M]
    int opt;            // enable empty tail data drop optimization
    int freq;           // --freq=n[k, M] frequency of JTAG/SWD
    enum connect_type connect;
} __flash_opts;

const char *path_to_hex = "/home/pi/Desktop/demo.bin";
/**/ 
#define FLASH_OPTS_INITIALIZER {0, { 0 }, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}

/**/
stlink_t* sl = NULL;
__flash_opts opt;

static stlink_t *connected_stlink = NULL;

static void cleanup(int signum){
    (void)signum;
    if (connected_stlink)
    {
        stlink_run(connected_stlink,RUN_NORMAL);
        stlink_exit_debug_mode(connected_stlink);
        stlink_close(connected_stlink);
    }
    
    exit(1);
}

// static void button_callback(void){
//     opt.cmd = FLASH_CMD_ERASE;
// }


int main(){
    
    /**/
    // wiringPiSetup();
    // pinMode(button,INPUT_PUD_UP);
    // printf("Hello world\n");
    // wiringPiISR(button,INT_EDGE_RISING,&button_callback);
    /**/

    int err = -1;
    uint8_t * mem = NULL;

    opt.size = 0;
    opt.connect = CONNECT_NORMAL;

    sl = stlink_open_usb(opt.log_level,opt.connect,(char*)opt.serial,opt.freq);


    if(sl == NULL){
        printf("can not detect any device\n");
        printf("please check the connection again\n");
        return -1;
    }
    else{
        printf("device connected successfully :))\n");
    }

    if(sl->flash_type == STLINK_FLASH_TYPE_UNKNOWN){
        printf("Failed to connect to target\n");
        return -1;
    }
    
    
    if(opt.flash_size != 0u && opt.flash_size  != sl->flash_size){
        sl->flash_size = opt.flash_size;
    }

    sl->verbose = opt.log_level;
    sl->opt = opt.opt;

    connected_stlink = sl;

    signal(SIGINT,&cleanup);
    signal(SIGTERM,&cleanup);
    signal(SIGSEGV,&cleanup);


    if (stlink_current_mode(sl) == STLINK_DEV_DFU_MODE) {
        if (stlink_exit_dfu_mode(sl)) {
            printf("Failed to exit DFU mode\n");
            goto on_error;
        }
    }


    if (stlink_current_mode(sl) != STLINK_DEV_DEBUG_MODE) {
        if (stlink_enter_swd_mode(sl)) {
            printf("Failed to enter SWD mode\n");
            goto on_error;
        }
    }    
    opt.log_level = STND_LOG_LEVEL;
    opt.cmd = FLASH_CMD_NONE;
    opt.filename = path_to_hex;
    opt.addr = FLASH_ADDR;
    opt.format = FLASH_FORMAT_IHEX;
     
    size_t size = 0;

    printf("initialized successfull!!\n");

    while(1){
        switch (opt.cmd)
        {
        case FLASH_CMD_NONE:
            
            if(getchar()=='a'){
                opt.cmd = FLASH_CMD_ERASE;
            }
            break;
        case FLASH_CMD_ERASE:
            //
            err = stlink_erase_flash_mass(sl);
            if(err == -1){
                printf("Failed to erase chip\n");
                goto on_error;
            }
            printf("Erase chip finished\n");
            opt.cmd = FLASH_CMD_WRITE;
            break;
        case FLASH_CMD_WRITE:
            //

            if (opt.format == FLASH_FORMAT_IHEX) {
                err = stlink_parse_ihex(opt.filename, stlink_get_erased_pattern(sl), &mem, &size, &opt.addr);

                if (err == -1) {
                    printf("Cannot parse %s as Intel-HEX file\n", opt.filename);
                    goto on_error;
                }
            }
            if ((opt.addr >= sl->flash_base) &&
                (opt.addr < sl->flash_base + sl->flash_size)) {
                // if (opt.format == FLASH_FORMAT_BINARY) {
                //     err = stlink_mwrite_flash(sl, mem, (uint32_t)size, opt.addr);
                // } else {
                //     err = stlink_fwrite_flash(sl, opt.filename, opt.addr);
                // }
                err = stlink_mwrite_flash(sl, mem, (uint32_t)size, opt.addr);
                if (err == -1) {
                    printf("stlink_fwrite_flash() == -1\n");
                    goto on_error;
                }
            } else {
                err = -1;
                printf("Unknown memory region\n");
                goto on_error;
            }
            printf("\nFlashing finished\n");
            opt.cmd = CMD_RESET;
            
            break;

        case CMD_RESET:
            if(stlink_reset(sl,RESET_AUTO)){
                goto on_error;
            }
            printf("Reset Device\n");
            goto end_of_program;

            break;
        default:
            break;
        }


        usleep(100000);
    }
on_error:
    stlink_exit_debug_mode(sl);
    stlink_close(sl);
    free(mem);

    return err;

end_of_program: 
    exit(1);

}



