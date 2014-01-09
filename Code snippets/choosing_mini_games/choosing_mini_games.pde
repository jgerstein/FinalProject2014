Game g1, g2;          //create 2 game objects.  this will also work if they are different classes
boolean game1,game2;  //create 2 booleans corresponding with the games
Button b1, b2;        //create 2 button objects

void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100, 100);
  g1 = new Game(50, 50, 1.5, 2, 80);
  g2 = new Game(20, 80, 3, .8, 50);
  b1 = new Button(20, 20);
  b2 = new Button(20, 80);
}

void draw() {
  background(0);
  b1.display();
  b2.display();
  if (b1.selected()) {
    game1 = true;
    game2 = false;
  }
  if (b2.selected()) {
    game2 = true;
    game1 = false;
  }
  if(game1){
    g1.display();
    g1.move();
  }
  if(game2){
    g2.display();
    g2.move();
  }
}



class Button {
  PVector loc;
  int size;

  Button(float x, float y) {
    loc = new PVector(x, y);
    size = 25;
  }

  void display() {
    fill(0, 0, 100);
    rect(loc.x, loc.y, size, size);
  }

  boolean selected() {
    if (mouseX > loc.x && mouseX < loc.x + size && mouseY > loc.y && mouseY < loc.y + size) {
      return true;
    }
    else {
      return false;
    }
  }
}


class Game {
  PVector loc, vel;
  color c;
  int d;

  Game(float x, float y, float xspeed, float yspeed, int d_) {
    vel = new PVector(abs(xspeed), abs(yspeed));
    loc = new PVector(x, y);
    c = color(random(360), 100, 100);
    d = d_;
  }

  void display() {
    fill(c);
    ellipse(loc.x, loc.y, d, d);
  }

  void move() {
    loc.add(vel);
    if (loc.x + d/2 > width) {
      loc.x = -d/2;
    }
    if (loc.y + d/2 > height) {
      loc.y = -d/2;
    }
  }
}

