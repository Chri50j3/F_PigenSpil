ArrayList<Objekt> objekter = new ArrayList<Objekt>();
ArrayList<Platform> platforme = new ArrayList<Platform>();
PImage background;

void setup(){
  fullScreen();
  objekter.add(new Player(100,500));
  objekter.add(new Simp(150,500));
  platforme.add(new Platform(150,600,200,20,0));
  platforme.add(new Platform(400,600,200,20,0));
  platforme.add(new Platform(550,400,200,20,0));
  rectMode(CENTER);
  imageMode(CENTER);
}

void draw(){
  background(200);
  for(Objekt r: objekter){
    r.update();
    r.display();
  }
  for(Platform r: platforme){
    r.update();
    r.display();
  }
}

void keyPressed(){
  switch(key){
    case'a':
      objekter.get(0).speed.x -= 1;
      break;
    case'd':
      objekter.get(0).speed.x += 1;
      break;
    case'w':
      if(abs(objekter.get(0).speed.y) < 1.1)
        objekter.get(0).speed.y -= 20;
  }
  
}
