class Locker{
  float x;
  float y; 
  
  Locker(float x_, float y_){
    x = x_;
    y = y_; 
  }
  
  void display(){
    fill(105, 161, 201);
    rect(x, y, 100, 230);
    fill(48, 60, 69);
    circle((x + 75), (y + 115), 10);
    rect((x + 71), (y + 118), 8, 8);
  }
}
