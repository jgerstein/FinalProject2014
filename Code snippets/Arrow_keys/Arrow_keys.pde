int x, y;
void setup() {
  size(500, 500);
  x = width/2;
  y = height/2;
}

void draw() {
  background(0);
  ellipse(x, y, 50, 50);
  if (keyPressed && key == CODED) {
    if (keyCode == LEFT) {
      x--;
    }
    if (keyCode == UP) {
      y--;
    }
    if (keyCode == RIGHT) {
      x++;
    }
    if (keyCode == DOWN) {
      y++;
    }
  }
}

