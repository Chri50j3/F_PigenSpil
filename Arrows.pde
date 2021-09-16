class Arrow extends Objekt{
  PImage pil;
  PVector kraft = new PVector(dir, -10);
  PVector velocity = new PVector();

  Arrow(float x, float y){
    location = new PVector(x,y);
    pil = loadImage("Pil.png");
    arrow = true;
    h = 45; b = 45;
  }
   
  void update(){
    velocity.add(gravity);
    location.add(velocity);
    location.add(kraft);
  }
  
  void display(){
    image(pil, location.x + 22, location.y, b, h);
  }
}
