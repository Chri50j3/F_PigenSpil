class Platform extends Objekt{
  float move, moveGoal;
  float w,h;

  Platform(float x,float y,float w_, float h_,float move_){
    location = new PVector(x,y);
    move = move_;
    moveGoal = location.x+move_;
    w = w_;
    h = h_;
  }
  
  void update(){
    location.x += move/100;
    if(abs(location.x - moveGoal) < 2){
      move *=-1;
      moveGoal = location.x+move;
    }
  }
  
  void display(){
    rect(location.x,location.y,w,h);
  }
}
