class Lighting
{
  private PImage _light;
  private Player _p1;
  private Player _p2;
  private int _radius = 80;
  
  Lighting(Player p1, Player p2)
  {
    _p1 = p1;
    _p2 = p2;
    _light = createImage(width, height, ARGB);
    _light.loadPixels();
    for (int i = 0; i < _light.pixels.length; i++)
    {
      _light.pixels[i] = color(0,0,0,255);
    }
    _light.updatePixels();
  }
  
  void Update()
  {
    _light.loadPixels();
    if ( _p1 != null && _p2 != null)
    {
      drawTorchAt (p1.GetX(), p1.GetY(), _radius);
      drawTorchAt (p2.GetX(), p2.GetY(), _radius);
    }
    _light.updatePixels();
    imageMode(CENTER);
    image(_light,width/2,height/2);
    
    if (keyPressed)
    {
      if (key == '-')
      {
        _radius--;
      }
      if (key == '=')
      {
        _radius++;
      }
    }
  }
  
  private void drawTorchAt(float x, float y, int r)
  {
     int start = int ( ((y-r) * width ) + (x-r) );
     int end =   int ( ((y+r) * width ) + (x+r) );
     
     int pixX;
     int pixY;
     float dist;
     int opacity;
     
     for ( int i = start; i < end; i++)
     {
       pixX = i % width;
       pixY = (i - pixX)/width;
       dist = dist(x,y, pixX, pixY);
       if ( dist < r )
       {
         _light.pixels[i] = color ( 0, 0, 0, map(dist, 0, r, 150, 255) );
       }
     }
  }
  
}