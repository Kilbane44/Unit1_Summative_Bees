class Bee
{
  PImage img;
  PVector pos;
  float sleepTime;

  Bee(PImage _img)
  {
    pos = new PVector(169, 200);
    img= _img;
    sleepTime = random(6000);
  }

  void Render()
  {
    if (millis() > sleepTime)
    {
      image(img, pos.x, pos.y);
      pos.x+= 3;
      pos.y+=random(-6, 7);
      Reset();
    }
    
   
  }

  void Fly()
  {
  }

  void Reset()
  {
    if(pos.x > width || pos.y < 0)
    {
      pos = new PVector(169,200);
      sleepTime = millis() + random(6000);
    }
  }
}