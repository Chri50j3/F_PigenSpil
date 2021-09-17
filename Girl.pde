class Girl extends Human{
  
  Girl(float x, float y){
    location = new PVector(x,y);
    speed = new PVector();
    figur = loadImage("Girl.png");
    h = 100;
    b = 100;
  }

}
