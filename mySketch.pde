ArrayList<Car> Lcar = new ArrayList<Car>();
int x, y;

void setup() {
  size(800, 542);
  rectMode (CENTER);
  x=20;
  y=20;
  
  for (int i=0; i<7; i++)
  {
    Car Tcar = new Car(x, y);
    Lcar.add(Tcar);
    x=x+80;
    y=y+80;
    
  }
  y=10;
  x=500; 
  
  for (int i=0; i<7; i++)
  {
    Car Tcar= new Car(x, y);
    Lcar.add(Tcar);
    x=x-80;
    y=y+80;
  }
}
void draw() {
background(0);

  for (int i=0; i<Lcar.size(); i++)
  {
    Car Tcar= Lcar.get(i);
    Tcar.move();
    Tcar.display();
  }
}