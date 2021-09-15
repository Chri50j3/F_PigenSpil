class Player extends Human{
  PImage bow;

  Player(float x, float y){
    location = new PVector(x,y);
    speed = new PVector();
    topSpeed = 10;
    player = true;
    figur = loadImage("Dreng.png");
    bow = loadImage("Bue.png");
  }
  
  void update(){
    move();
    colision();
  }
  
  void display(){
    super.display();
    image(bow,location.x+20,location.y,50,50);
  }
}
