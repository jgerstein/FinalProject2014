float jumpSpeed = 5;
float x, y, size;
boolean jump = false;

void setup() {
  size(600, 300);
  x = 50;
  y = height - 50;
  size = 30;
}

void draw() {
  background(0);
  triangle(x, y, x+size/2, y, x+size/4, y-size);
  x++;
  if (x > width) {
    x = -size;
  }
  //if value of jump is TRUE, jumping code will run
  if (jump) {
    y-=jumpSpeed;        //decrease the value of y to make it move upwards
    jumpSpeed-=.1;       //decrease the value of jumpSpeed, taking it to 0 and then into negative numbers - remember gravity?
    if (y > height - 50) {    //if y hits the "floor" defined by its original value...
      y = height - 50;        //...set it to its original value (to prevent small errors)
      jump = false;           //...set jump to false to stop the jumping
    }
  }
}

void keyPressed() {
  jump = true;          //set jump to TRUE to trigger the jumping
  jumpSpeed = 5;        //reset jumpSpeed to whatever value you want it to be to control how fast the figure jumps
}

