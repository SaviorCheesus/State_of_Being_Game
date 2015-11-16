class Monster
{
  
  
  PVector _pos;
  PVector _velocity;
  PVector _acceleration;
  float _topSpeed;
  PVector _target;
  
  Monster()
  {
    _pos = new PVector(width/2, height/2);
    _velocity = new PVector(0,0);
    _topSpeed = .25;
    _target = new PVector(mouseX, mouseY);
    
  }
  
  void Draw()
  {
    fill(150,0,0);
    ellipse(_pos.x, _pos.y, 10, 10);
  }
  
  void Hunt()
  {
    PVector mouse = new PVector(mouseX,mouseY);


    PVector dir = PVector.sub(mouse,_pos);
    dir.normalize();
    dir.mult(2);
    _acceleration = dir;
  }
  void Move()
  {
    Hunt();
    _velocity.add(_acceleration);
    _velocity.limit(_topSpeed);
    _pos.add(_velocity);
  }
  void Update()
  {
    Move();
    Draw();
  }
  
}