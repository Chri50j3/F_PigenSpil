class Platform extends Objekt{
  float move;
  float w,h;

  Platform(float x,float y,float w_, float h_,float move_){
    location = new PVector(x,y);
    move = move_;
    w = w_;
    h = h_;
  }
  
  void display(){
    rect(location.x,location.y,w,h);
  }
}
