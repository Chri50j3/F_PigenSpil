class Simp extends Human{
  float startX,move;

  Simp(float x, float y,float move_){
    location = new PVector(x,y);
    startX = x;
    speed = new PVector();
    topSpeed = 10;
    speed.x = 1;
    h = 100;
    b = 100;
    move = move_;
    
    int billede = int(random(1,4));
    switch(billede){
      case 1:
        figur = loadImage("Simp1.png");
        break;
      case 2:
        figur = loadImage("Simp2.png");
        break;
      case 3:
        figur = loadImage("Simp3.png");
        break;
    }
  }
  
  void update(){
    super.update();
    
    if(abs(location.x -startX)>move/2-15){
      speed.x *= -1;
      location.x += speed.x;
    }
    
    move();
    colision();
  }
}
