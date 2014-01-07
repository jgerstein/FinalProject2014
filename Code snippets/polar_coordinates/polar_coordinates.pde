/*
Polar coordinates are used to create coordinates based
 on angle and length.
 
 You might use these to have a line of a constant length
 that changes angles.
 */

float startx, starty;  //starting coordinates of the line
float endx, endy;      //ending coordinates of the line
float theta;          //angle determining position of line
int lineLength = 200; //length of line
void setup() {
  size(500, 500);
  startx = width/2;  //line starts at center of screen
  starty = height/2;
  theta =radians(30);  //set angle of line
}

void draw() {
  background(255);
  /*
  The calculation of the polar coordinates occurs below.
   You are welcome to see me for help with polar coordinates.
   
   If you enjoy trigonometry, draw a triangle on a piece of
   paper with the line drawn on the screen as the hypotenuse.
   You can use trigonometry to understand it. 
   */

  endx = startx + lineLength*cos(theta);  //add the polar coordinate to the starting coordinate
  endy = starty + lineLength*sin(theta);
  line(startx, starty, endx, endy);
  //if you want the line to rotate, change theta!
  theta+=.001;
}

