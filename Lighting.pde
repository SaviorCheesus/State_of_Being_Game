class Lighting
{
  private PImage _light;
  private Player _p1;
  private Player _p2;
  
  Lighting(Player p1, Player p2)
  {
    _p1 = p1;
    _p2 = p2;
    _light = createImage(width, height, ARGB);
    _light.loadPixels();
    for (int i = 0; i < _light.pixels.length; i++)
    {
      _light.pixels[i] = color(0,0,0,100);
    }
    _light.updatePixels();
  }
  
  void Update()
  {
    _light.loadPixels();
    if ( _p1 != null && _p2 != null)
    {
      drawTorchAt (p1.GetX(), p1.GetY(), 50);
      drawTorchAt (p2.GetX(), p2.GetY(), 50);
    }
    _light.updatePixels();
    image(_light,0,0);
  }
  
  private void drawTorchAt(float x, float y, int w)
  {

    
  }
  
}