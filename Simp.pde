class Simp extends Human{
  float startX;

  Simp(float x, float y){
    location = new PVector(x,y);
    startX = x;
    speed = new PVector();
    topSpeed = 10;
    speed.x = 1;
    player = false;
  }
  
  void update(){
    
    if(abs(location.x -startX)>100){
      speed.x *= -1;
      location.x += speed.x;
    }
    
    move();
    colision();
  }
  
  void display(){
    fill(255,0,0);
    rect(location.x,location.y,h,b);
    fill(255);
  }
  
}
