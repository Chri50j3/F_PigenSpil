class Player extends Human{
  PImage bow;

  Player(float x, float y){
    location = new PVector(x,y);
    speed = new PVector();
    topSpeed = 10;
    player = true;
    figur = loadImage("Dreng.png");
    bow = loadImage("Bue.png");
    h = 100;
    b = 100;
    health = 5;
  }
  
  void update(){
    super.update();
    move();
    colision();
    
  }
  
  void display(){
    super.display();
    image(bow,location.x+dir,location.y,50,50);
    text("HP " +health,20,20);
  }
}
