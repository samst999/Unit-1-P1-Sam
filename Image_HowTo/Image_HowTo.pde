// variables
PImage PUG;
PImage FOOD;
float PUGX = 800;
float PUGY = 200;
float FOODX = 250;
float FOODY = 250;
float speed = 4;
void setup()
{
  size(800, 800);
  PUG = loadImage("PugRunning.png");
  FOOD = loadImage("DogFood2.png");
  PUG.resize(300, 300);
  FOOD.resize(200,200);
}
void draw()
{
  background(0, 0, 0);
  image(FOOD,FOODX,FOODY);
  image(PUG, PUGX, PUGY);
  PUGX = PUGX - speed;
  PUGY = PUGY + 0;
  if (PUGX < -300)
  {    
    PUGX = -300;
    speed = -4;
  }   
  if (PUGX > 800)
  {
    PUGX = 800;
    speed = 4;
  }
  
}
