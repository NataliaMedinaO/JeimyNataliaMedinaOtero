class Car {
  float x;
  float y;
  float vel;
  color color1 = color (#FF0320);
  color color2 = color (#FF03EF);
  color colorI;

  int direccion =1;

  Car(float yy, float xx) {
    x= xx;
    y= yy;
    vel=5;
    colorI =color(#03A9FF);
    
  }
  void display() {

    noStroke();
    fill(colorI);
    rect(x, y, 100, 50);
  }

  void move() {
    x=x+vel;
    
    if (x > width) {
      vel = vel*-1;
      colorI = color2;
    }
    if (x< width-800) {
      vel=vel*-1;
      colorI = color1;
    }
  }
}