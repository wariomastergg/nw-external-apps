#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <math.h>
#include "extapp_api.h"

float px, py;
unsigned int i = 0, j = 0, k = 0;

void drawPlayer(){
	extapp_pushRectUniform(px,py,8,8,rgb24to16(0xFFFF00));
}

void display()
{
 drawPlayer();
}

void buttons(unsigned char key,int x,int y){
  if (k & SCANCODE_Left) { px-=5;}
  if (k & SCANCODE_Right) { px+=5;}
  if (k & SCANCODE_Up) { py-=5;}
  if (k & SCANCODE_Down) { py+=5;}	
  if (k & SCANCODE_Home) { return;}
}

void init()
{
 extapp_pushRectUniform(0,0,320,240,rgb24to16(0x808080));
 px=10; py=10;
}

int extapp_main(void)
{ 
 init();
 display();
 k=0;
 uint64_t k = extapp_scanKeyboard();
 Buttons();
 glutMainLoop();
}

