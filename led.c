#include <stdio.h>
#include <wiringPi.h>
#include <unistd.h>
#define button 2
#define led 0

void toggle_led(void){
	digitalWrite(led,1^digitalRead(led));
}
int main(){
	wiringPiSetup ();
	pinMode(button,INPUT);
	pullUpDnControl(button,PUD_OFF);
	pinMode(led,OUTPUT);
	digitalWrite(led,HIGH);
	wiringPiISR(button, INT_EDGE_RISING,&toggle_led);
	while(1){
			
		//if(!digitalRead(button)){
		//	delay(20);
		//	while(!digitalRead(button));
		//	digitalWrite(led,1^digitalRead(led));
		//}
		//else{
		;;
		//}
		//digitalWrite(led,HIGH);
		//printf("high\n");
		//sleep(1);
		//digitalWrite(led,LOW);
		//printf("low\n");
		//sleep(1);
		
	}
	return 1;

}
