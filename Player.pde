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
      if (keyPressed)
      {
        if ( key == 'w')
        {
          _y--;
        }
        else if ( key == 's')
        {
          _y++;
        }
        else if ( key == 'a')
        {
          _x--;
        }
        else if ( key == 'd')
        {
          _x++;
        }
      }
    }
    else if (controlScheme == 1)
    {
      if (keyPressed)
      {
        if ( key == 'i')
        {
          _y--;
        }
        else if ( key == 'k')
        {
          _y++;
        }
        else if ( key == 'j')
        {
          _x--;
        }
        else if ( key == 'l')
        {
          _x++;
        }
      }      
    }
  }
  
  public void Update()
  {
    Move();
  }
  
  public void Draw()
  {
    imageMode(CENTER);
    image(_sprite, _x, _y);
  }
  
  public float GetX() { return _x; }
  public float GetY() { return _y; }
  public void SetX(float x) { _x = x; }
  public void SetY(float y) { _y = y; }
}