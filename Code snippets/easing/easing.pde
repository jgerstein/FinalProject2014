/*
Easing is a way of making something follow a point, approaching it quickly at first
and slowing down as it approaches.  This is a simple easing example, with an
ellipse easing towards the position of the mouse.  Smaller values for easing will 
make the ellipse lag further behind the position of the mouse.  As the ease value
gets larger and approaches 1, the circle will remain closer to the mouse.
*/

float x, y;        //position of the ball
float dx, dy;      //difference between ball and mouse
float ease = .1;  //control rate at which ball approaches mouse

void setup() {
  size(500, 500);
  x = width/2;
  y = height/2;
}

void draw() {
  background(0);
  ellipse(x, y, 50, 50);
  dx = mouseX - x;      //calculate difference between mouseX and ball x
  dy = mouseY - y;      //calculate difference between mouseY and ball y
  dx*=ease;             //multiply difference by ease
  dy*=ease;             //multiply difference by ease
  x+=dx;                //ball moves by dx
  y+=dy;                //ball moves by dy
}

