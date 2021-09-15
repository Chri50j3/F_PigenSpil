class Player extends Human{

  Player(float x, float y){
    location = new PVector(x,y);
    speed = new PVector();
    topSpeed = 10;
    player = true;
  }
  
  void update(){
    move();
    colision();
  }
  
  void display(){
    rect(location.x,location.y,h,b);
  }
  
}
