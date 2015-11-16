class Player
{
  private PImage _sprite;
  private float  _x, _y;
  private int controlScheme;
  
  Player(String img, int scheme)
  {
    _sprite = loadImage(img);
    controlScheme = scheme;
    _x = _y = 0;
  }
  
  private void Move()
  {
    if (controlScheme == 0)
    {
      
    }
    else if (controlScheme == 1)
    {
      
    }
  }
  
  public void Update()
  {
    
  }
}