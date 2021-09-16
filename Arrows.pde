class Arrow extends Objekt{
  PImage pil;
  PVector kraft = new PVector(10, -5);
  PVector velocity = new PVector(10, -5);

  Arrow(float x, float y){
    location = new PVector(x,y);
    pil = loadImage("Pil.png");
  }
   
  void update(){
    velocity.add(gravity);
    location.add(velocity);
    location.add(kraft);
  }
  
  void display(){
    image(pil, location.x + 22, location.y, 45, 45);
  }
}
