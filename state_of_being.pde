Player p1;
Player p2;
Lighting light;
PImage floor; 
Monster m;
void setup()
{
  fullScreen();
  p1 = new Player("player.png",0);
  p2 = new Player("player2.png",1);
  light = new Lighting(p1,p2);
  floor = loadImage("floor.jpg");
  m = new Monster();
  p1.SetX(width/2);
  p1.SetY(height/2);
  p2.SetX(width/2+100);
  p2.SetY(height/2);
  
  /*
  p1.SetX(random(0,width));
  p1.SetY(random(0,height));
  p2.SetX(random(0,width));
  p2.SetY(random(0,height));
  */
  
  imageMode(CENTER);
}

void draw()
{
  image(floor, width/2, height/2);
  
  p1.Update();
  p1.Draw();
  
  p2.Update();
  p2.Draw();
  m.Update(p1,p2);
  light.Update();
}	