/*
This is an example demonstrating polymorphism and inheritance.
It is NOT something you are required to be familiar with, but
some groups may find it useful.

If you want explanation, see me for help.

There are two main benefits to this.
1. Classes can inherit data and methods from a main class.  They
may also expand on the data and methods from the main class.  This
lets you do things like define how a car moves, but give additional
movement information to a specific version of a car
2. If all the different types of cars are subtypes of the Car class,
they can all go into an array or ArrayList of Car objects
*/

ArrayList<Car> cars = new ArrayList<Car>();

void setup() {
  size(displayWidth, displayHeight);
  cars.add(new BlueCar(width/2, height/2));
}

void draw() {
  background(255);
  for (Car c : cars) {
    c.display();
    c.move();
  }
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    cars.add(new BlueCar(mouseX, mouseY));
  }
  else { 
    cars.add(new RedCar(mouseX, mouseY));
  }
}

class Car {
  PVector loc, vel;
  PImage car;

  Car(float x, float y) {
    loc = new PVector(x, y);
  }

  void display() {
    image(car, loc.x, loc.y);
  }

  void move() {
    loc.add(vel);
  }
}

class BlueCar extends Car {
  BlueCar(float x, float y) {
    super(x, y);
    vel = new PVector(2, 0);
    car = loadImage("bluecar.png");
  } 

  void move() {
    super.move();
    if (loc.x > width) {
      loc.x = -car.width;
    }
  }
}

class RedCar extends Car {
  RedCar(float x, float y) {
    super(x, y);
    vel = new PVector(-2, 0);
    car = loadImage("redcar.jpg");
  }
  void move() {
    super.move();
    if (loc.x < -car.width) {
      loc.x = width;
    }
  }
}

