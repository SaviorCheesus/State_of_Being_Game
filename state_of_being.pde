Player p1;
Player p2;
Lighting light;

void setup()
{
  fullScreen();
  p1 = new Player("player.png",0);
  p2 = new Player("player2.png",1);
  light = new Lighting(p1,p2);
  p1.SetX(random(0,width));
  p1.SetY(random(0,height));
  p2.SetX(random(0,width));
  p2.SetY(random(0,height));
}

void draw()
{
  p1.Update();
  p1.Draw();
  
  p2.Update();
  p2.Draw();
  
  light.Update();
}	