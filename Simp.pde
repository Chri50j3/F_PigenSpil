class Simp extends Human{
  float startX;

  Simp(float x, float y){
    location = new PVector(x,y);
    startX = x;
    speed = new PVector();
    topSpeed = 10;
    speed.x = 1;
    player = false;
    
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
    
    if(abs(location.x -startX)>100){
      speed.x *= -1;
      location.x += speed.x;
    }
    
    move();
    colision();
  }
}
