class Arrow extends Objekt{
  PImage pil;
  PVector kraft = new PVector(dir, -10);

  Arrow(float x, float y){
    location = new PVector(x,y);
    pil = loadImage("Pil.png");
    arrow = true;
    h = 45; b = 45;
    speed = new PVector();
  }
   
  void update(){
    speed.add(gravity);
    location.add(speed);
    location.add(kraft);
  }
  
  void display(){
    pushMatrix();
    scale(dir/20,1);
    image(pil, (location.x+dir)*(dir/20), location.y, b, h);
    popMatrix();
  }
}
