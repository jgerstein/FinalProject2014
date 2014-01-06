//The points array will store the points that make up the snake's body
PVector[] points = new PVector[20];

void setup() {
  //  frameRate(3);
  size(500, 500);
  //initialize every PVector in the array at width/2,height/2
  for (int i = 0; i < points.length; i++) {
    points[i] = new PVector(random(width), random(height));
  }
}

void draw() {
  background(0);
  stroke(255, 0, 0);
  //display a circle at each PVector in the points array
  for (int i = 0; i < points.length; i++) {
    ellipse(points[i].x, points[i].y, 20, 20);
  }
  /*
  To make the snake move, I'm going to move the second-to-last set of values into
   the last spot in the arrays, the third-to-last set of values into the second-to-last 
   spot in the arrays, and so on.  After I move the first set of values into the second
   spot, I'll create a new value for the first spot in the arrays.
   */
  for (int i = points.length - 1; i > 0; i--) {
    points[i] = points[i-1];
  }
  //this line makes the snake follow the mouse
  points[0]=new PVector(mouseX, mouseY);
}

