class Human extends Objekt{
  float health;
  float topSpeed;
  float h = 100,b = 100;
  boolean player;
  PImage figur;
  boolean grounded = false;
  
   void move(){
     if(abs(speed.y) > 20)
       speed.y *= 0.9;
     location.add(speed);
     if(!grounded)
       speed.y += gravity.y;
     grounded = false;
   }
  
  void colision(){

    for(Platform r: platforme){
      if(abs(location.y - r.location.y)<r.h/2+h/2 && abs(location.x - r.location.x) < r.w/2){
        grounded = true;
        if(speed.y > 0)
          location.y = r.location.y - r.h/2 - h/2;
        else if(speed.y < 0)
          location.y = r.location.y + r.h + h/2;
        speed.y = 0;
        if(player)
          speed.x *= 0.7;
      }
    }
  }
  
  void display(){
    image(figur,location.x,location.y,b,h);
  }
  
}
