#include <iostream>
#include <cstdlib>
#include <wiringPi.h>
#include <unistd.h>
#include <stlink.h>

using namespace std;

#define button 27
const char *command = "st-flash write BlackBox.hex 0x8000000";

void button_callback(void){
  system(command);
}
int main(){
  //
  //string str = "st-flash write BlackBox.hex 0x8000000";
  //check existence 
  cout << "Check existence of st-link " << endl;
  
  wiringPiSetup();                  // use the GPIO numbering
  pinMode(button, INPUT);            // the button
  cout << "Hello world" << endl;
  wiringPiISR(button,INT_EDGE_RISING,&button_callback);
  

  while(1){
    ;;
  }

  return 0;
}
