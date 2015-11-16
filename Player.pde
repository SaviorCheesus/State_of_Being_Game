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
    Move();
  }
  
  public void Draw()
  {
    image(_sprite, _x, _y);
  }
  
  public float GetX() { return _x; }
  public float GetY() { return _y; }
  public void SetX(float x) { _x = x; }
  public void SetY(float y) { _y = y; }
}