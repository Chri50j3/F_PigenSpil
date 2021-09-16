class Human extends Objekt{
  int health = 1;
  float topSpeed;
  boolean player;
  PImage figur;
  boolean grounded = false;
  float time;
  
   void move(){
     if(abs(speed.y) > 20)
       speed.y *= 0.9;
     location.add(speed);
     if(!grounded)
       speed.y += gravity.y;
     grounded = false;
   }
  
  void colision(){
    // colision med platform
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
    // colison med andre personer
    for(Objekt r: objekter){
      if(abs(location.y - r.location.y)<r.h/2+h/2 && abs(location.x - r.location.x) < r.b/2 && location.x != r.location.x && (player||r.arrow)){
        if(r.arrow && player){break;}
        if(speed.x > 1){
          speed.mult(-0.9);
        }
        else{
          speed.x = location.x-r.location.x;
          speed.mult(0.3);
        }
        if (millis() - time > 1000){
          health --;
          time = millis();
        }
      }
    } 
  } 
  
  void update(){
    if(health <= 0){
      objekter.remove(this);
    }
  }
  
  void display(){
    image(figur,location.x,location.y,b,h);
  }
  
}
