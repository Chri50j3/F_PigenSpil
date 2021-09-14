class Player extends Human{

  Player(float x, float y){
    location = new PVector(x,y);
    speed = new PVector();
    topSpeed = 10;
  }
  
  void update(){
    if(abs(speed.y) > 20)
      speed.y *= 0.9;
    location.add(speed);
    speed.y += gravity.y;
    if(location.y>500){
      location.y = 500;
      speed.y = 0;
      speed.x *= 0.9;

    }
  }
  
  void display(){
    rect(location.x,location.y,20,20);
  }
  
}
