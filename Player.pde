class Player extends Human{
  PImage bow,skade,ikSkade, heart;

  Player(float x, float y){
    location = new PVector(x,y);
    speed = new PVector();
    topSpeed = 10;
    player = true;
    figur = loadImage("Dreng.png");
    ikSkade = loadImage("Dreng.png");
    skade = loadImage("DrengSkade.png");
    bow = loadImage("Bue.png");
    h = 100;
    b = 100;
    health = 5;
  }
  
  void update(){
    figur = ikSkade;
    int HP = health;
    super.update();
    move();
    colision();
    
    if(health < HP){
      figur = skade;
    }
    
    // Hearts
    heart = loadImage("Heart.png"); 
    if(health >=5){
      image(heart, 230, 30, 50, 50);
      }
    if(health >=4){
      image(heart, 180, 30, 50, 50);
      }
    if(health >=3){
      image(heart, 130, 30, 50, 50);      
      }
    if(health >=2){
      image(heart, 80, 30, 50, 50);
      }
    if(health >=1){
      image(heart, 30, 30, 50, 50);
      }

}

  void display(){
    super.display();
    pushMatrix();
    scale(dir/20,1);
    image(bow,(location.x+dir)*(dir/20),location.y,50,50);
    popMatrix();
  }
}
