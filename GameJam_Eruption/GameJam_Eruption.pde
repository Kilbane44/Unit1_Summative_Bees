color One = color(255,0,0);

PImage bg;
PImage bee;
PImage cloud;
int BEE_COUNT = 100;

Bee myB = null;

int age=5;


Bee[] Bs = new Bee[100];

int x = 0;
int y = 50;

void setup()
{
  size(800,800);
  
  x=width/2;
  y=height/2;
  
  bg = loadImage("BeeTree.jpg");
  bee = loadImage("bee.png");
  
 myB = new Bee(bee);

 
  bee.resize(20,20);
  bg.resize(800,800);
  
  int colorChoice = (int)random(1,4);
 
  if(colorChoice == 1)
  {
    fill(255,0,0);
  }

  
  
  for(int i=0; i < BEE_COUNT; i++)
  {
    Bs[i] = new Bee(bee);
  }
}


void draw()
{
  background(bg);
  
  print(mouseX);
  print("   ");
  println(mouseY);
  
  for(int i=0; i < BEE_COUNT; i++)
  {
    Bs[i].Render();
  }
}