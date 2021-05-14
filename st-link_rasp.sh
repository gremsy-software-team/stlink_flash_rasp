#!/usr/bin/env bash

#first check the connection of st-link

#path for GPIO access
base_gpio_path = /sys/class/gpio
button_pin = 9 
#export button pin 
exportPin(){
	if [ ! -e $base_gpio_path/gpio$1 ]; then 
		echo "$1" > $base_gpio_path/export
	fi 
}
#configure input or output 
setOutput(){
	echo "out" > $base_gpio_path/gpio$1/direction
}
setInput(){
	echo "in" > $base_gpio_path/gpio$1/direction
}

exportPin $button_pin
setInput  $button_pin 

while[ 1 ] 
do
echo "flashing stm32f4 $(st-flash write BlackBox.hex 0x8000000)"

done 
