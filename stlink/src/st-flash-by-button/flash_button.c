#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

#include <stlink.h>
#include <helper.h>

#define TIMEOUT 10
/*check connection of st_link usb with computer*/ 
static void stlink_print_info(stlink_t *sl){
    const struct stlink_chipid_params *params = NULL;

    if(!sl) return ;

    printf("    serial: %s\n",sl->serial);
    printf("    flash:  %u (pagesize: %u)\n",(uint32_t)sl->flash_size, 
                                            (uint32_t)sl->flash_pgsz);
    printf("    sram:    %u\n",(uint32_t)sl->sram_size);
    printf("    chipip:  0x%.4x\n",sl->chip_id);

    params = stlink_chipid_get_params(sl->chip_id);

    if(params)
        printf("    descr:      %s\n",params->description);
    
}

static void stlink_probe(enum connect_type connect, int freq){
    stlink_t **stdevs;
    size_t size;

    size = stlink_probe_usb(&stdevs,connect,freq);
    for(size_t n = 0; n < size; n++){
        stlink_print_info(stdevs[n]);
    }
    stlink_probe_usb_free(&stdevs,size);
}


int main(){
    
    //stlink_t* sl = NULL;
    enum connect_type connect = CONNECT_NORMAL;
    int freq = 0;
    // int count = 0;
    // while(sl != NULL || ++count >= TIMEOUT ){
    //     sl = stlink_open_first();
    // }
    // if (sl == NULL) {
    //     fprintf(stderr, "Failed to open stlink device ;(\n");
    //     exit(1);
    // }

    fprintf(stderr, "STlink device opened\n");

    /*display the information of device*/

    stlink_probe(connect,freq);

    printf("ready to flash program to stm32\n");

    

}



