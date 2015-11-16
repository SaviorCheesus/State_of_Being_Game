class Monster
{
  
  
  PVector _pos;
  PVector _velocity;
  PVector _acceleration;
  float _topSpeed;
  Player _target;
  
  Monster()
  {
    _pos = new PVector(10, 10);
    _velocity = new PVector(0,0);
    _topSpeed = .25;
    
  }
  
  void Draw()
  {
    fill(150,0,0);
    ellipse(_pos.x, _pos.y, 50, 50);
  }
  
  void Hunt(Player p1, Player p2)
  {
    PVector dir;
    //PVector mouse = new PVector(mouseX,mouseY);
    PVector p1Pos = new PVector(p1.GetX(),p1.GetY());
    PVector p2Pos = new PVector(p2.GetX(),p2.GetY());
     
    float p1Dist = dist(p1Pos.x,p1Pos.y,_pos.x,_pos.y);
    float p2Dist = dist(p2Pos.x,p2Pos.y,_pos.x,_pos.y);
    
    if(p1Dist < p2Dist)
    {
      dir= PVector.sub(p1Pos,_pos);
      _target = p1;
    }
    else
    {
      dir= PVector.sub(p2Pos,_pos);
      _target = p2;
    }
    
    
    
    dir.normalize();
    dir.mult(2);
    _acceleration = dir;
    
    
  }
  void Move(Player p1, Player p2)
  {
    
    Hunt(p1,p2);
    _velocity.add(_acceleration);
    _velocity.limit(_topSpeed);
    _pos.add(_velocity);
  }
  void Update(Player p1, Player p2)
  {
    Move(p1,p2);
    Draw();
  }
  
}