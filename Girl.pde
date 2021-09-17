class Girl extends Human{
  
  Girl(float x, float y){
    location = new PVector(x,y-10);
    speed = new PVector();
    figur = loadImage("Girl.png");
    h = 120;
    b = 74;
  }

}
