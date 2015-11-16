class Monster
{
  
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topSpeed;
  PVector target;
  
  Monster()
  {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    topSpeed = .25;
    target = new PVector(mouseX, mouseY);
    
  }
  
  void Draw()
  {
    fill(150,0,0);
    ellipse(location.x, location.y, 10, 10);
  }
  
  void Hunt()
  {
    PVector mouse = new PVector(mouseX,mouseY);

    PVector dir = PVector.sub(mouse,location);
    dir.normalize();
    dir.mult(2);
    acceleration = dir;
  }
  void Move()
  {
    Hunt();
    velocity.add(acceleration);
    velocity.limit(topSpeed);
    location.add(velocity);
  }
  void Update()
  {
    Move();
    Draw();
  }
  
}