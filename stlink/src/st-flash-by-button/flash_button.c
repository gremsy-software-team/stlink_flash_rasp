#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <signal.h>

#include <wiringPi.h>

#include <helper.h>
#include <stlink.h>
#include <unistd.h>
#include <st-flash/flash.h>

#define button 2
#define test_led 0
#define DEBUG_LOG_LEVEL 100
#define STND_LOG_LEVEL  50
#define ENABLE_OPT      1
#define FLASH_ADDR      (sl->flash_base) 

const char *path_to_hex = "/home/pi/st-link_flasher/stlink_flash_rasp/hex_file/demo.hex";
/**/ 
#define FLASH_OPTS_INITIALIZER {0, { 0 }, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}

/**/

typedef struct flash_opts __flash_opts;
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

static void button_callback(void){
    if(opt.cmd == FLASH_CMD_NONE){
        opt.cmd = FLASH_CMD_ERASE;
        digitalWrite(test_led,1^digitalRead(test_led));
    }
    else{
        printf("\ncan not flash device at this time\n");
    }
}


int main(int argc, char **argv){
    
    /**/
    wiringPiSetup();
    pinMode(button,INPUT);
    pinMode(test_led,OUTPUT);
    wiringPiISR(button,INT_EDGE_RISING,&button_callback);
    printf("\nButtons is Initialized\n");
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
        printf("device connected successfully :))\r\n");
    }

    if(sl->flash_type == STLINK_FLASH_TYPE_UNKNOWN){
        printf("Failed to connect to target\n");
        return -1;
    }
    
    
    if(opt.flash_size != 0u && opt.flash_size  != sl->flash_size){
        sl->flash_size = opt.flash_size;
        printf("Forcing flash size: --flash=0x%08X\n", (unsigned int)sl->flash_size);
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
    opt.cmd = FLASH_CMD_NONE;
    opt.filename = path_to_hex;
    opt.addr = FLASH_ADDR;

    opt.format = FLASH_FORMAT_IHEX;
     
    size_t size = 0;

    printf("initialized successfull!!\r\n");
    printf("[DEFAULT] [filename] : [%s]\r\n",opt.filename);
    
    printf("[DEFAULT] [format] : [HEX]\r\n");
    
    printf("Please press the button to flash the device\r\n");
    while(1){
        switch (opt.cmd)
        {
        case FLASH_CMD_NONE:
            ;;            
            break;
        case FLASH_CMD_ERASE:
            //
            printf("Start erasing chip\r\n");
            err = stlink_erase_flash_mass(sl);
            if(err == -1){
                printf("Failed to erase chip\n");
                goto on_error;
            }
            printf("Erase chip finished\r\n");
            opt.cmd = FLASH_CMD_WRITE;
            break;
        case FLASH_CMD_WRITE:
            //
            printf("Start flashing chip\r\n");
            if (opt.format == FLASH_FORMAT_IHEX) {
                err = stlink_parse_ihex(opt.filename, stlink_get_erased_pattern(sl), &mem, &size, &opt.addr);
                if (err == -1) {
                    printf("Cannot parse %s as Intel-HEX file\n", opt.filename);

                    goto on_error;
                }
            }
            if ((opt.addr >= sl->flash_base) &&
                (opt.addr < sl->flash_base + sl->flash_size)) {
                if (opt.format == FLASH_FORMAT_IHEX) {
                    printf("\n[FORMAT] IHEX\n");
                    err = stlink_mwrite_flash(sl, mem, (uint32_t)size, opt.addr);

                } 
                
                else {
                    printf("\n[FORMAR] BINARY\n");
                    err = stlink_fwrite_flash(sl, opt.filename, opt.addr);
                }
                
                if (err == -1) {
                    printf("stlink_fwrite_flash() == -1\n");
                    goto on_error;
                }
            }else if ((opt.addr >= sl->sram_base) &&
                (opt.addr < sl->sram_base + sl->sram_size)) {
                if (opt.format == FLASH_FORMAT_IHEX) {
                    err = stlink_mwrite_sram(sl, mem, (uint32_t)size, opt.addr);
                } else {
                    err = stlink_fwrite_sram(sl, opt.filename, opt.addr);
                }

                if (err == -1) {
                    printf("stlink_fwrite_sram() == -1\n");
                    goto on_error;
                }
            } 
            printf("\nFlashing finished\r\n");
            sleep(1);
            opt.cmd = FLASH_CMD_NONE;
            
            break;

        case CMD_RESET:
            if(stlink_reset(sl,RESET_AUTO)){
                printf("Failed to reset device\n");
                goto on_error;
            }
            printf("Reset Device\n");
            //goto end_of_program;
            opt.cmd = FLASH_CMD_NONE;
            break;
        default:
            break;
        }
        usleep(100000);
    }

    return 1;
on_error:
    stlink_exit_debug_mode(sl);
    stlink_close(sl);
    free(mem);

    return err;


}



