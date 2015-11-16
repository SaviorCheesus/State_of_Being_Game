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
    ellipse(_pos.x, _pos.y, 50, 50);
  }
  
  void Hunt(Player p1, Player p2)
  {
    PVector dir;
    PVector mouse = new PVector(mouseX,mouseY);
    PVector p1Pos = new PVector(p1.GetX(),p1.GetY());
    PVector p2Pos = new PVector(p2.GetX(),p2.GetY());
     
    if(dist(p1Pos.x,p1Pos.y,_pos.x,_pos.y) < dist(p2Pos.x,p2Pos.y,_pos.x,_pos.y))
    {
      dir= PVector.sub(p1Pos,_pos);
    }
    else
    {
      dir= PVector.sub(p2Pos,_pos);
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