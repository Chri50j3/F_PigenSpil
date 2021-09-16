class Human extends Objekt{
  float health = 1;
  float topSpeed;
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
      if(abs(location.y - r.location.y)<r.h/2+h/2 && abs(location.x - r.location.x) < r.b/2 && location.x != r.location.x && player){
        speed.mult(-0.9);
        health --;
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
