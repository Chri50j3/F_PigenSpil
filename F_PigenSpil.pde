ArrayList<Objekt> objekter = new ArrayList<Objekt>();
ArrayList<Platform> platforme = new ArrayList<Platform>();
int dir = 20;

void setup(){
  objekter.clear();
  platforme.clear();
  fullScreen();
  objekter.add(new Player(400,500));
  objekter.add(new Simp(150,500));
  platforme.add(new Platform(150,600,200,20,0));
  platforme.add(new Platform(400,600,200,20,0));
  for(int i = 0;i< 20;i++){
    platforme.add(new Platform(random(150,width-150),random(150,height-50),200,20,int(random(0,1.5))*100));
    for(Platform r:platforme){
      int y = platforme.size();
      if(dist(r.location.x,r.location.y,platforme.get(platforme.size()-1).location.x,platforme.get(platforme.size()-1).location.y) < 200 && r.location.x != platforme.get(platforme.size()-1).location.x){
        platforme.remove(platforme.get(platforme.size()-1));
      }
      if(y != platforme.size())
        break;
    }
  }
  rectMode(CENTER);
  imageMode(CENTER);
}

void draw(){
  background(200);
  for(Objekt r: objekter){
    int i = objekter.size();
    r.update();
    r.display();
    if(i != objekter.size()){
      break;
    }
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
      dir = -20;
      break;
    case'd':
      objekter.get(0).speed.x += 1;
      dir = 20;
      break;
    case'w':
      if(abs(objekter.get(0).speed.y) < 1.1)
        objekter.get(0).speed.y -= 20;
      break;
    case ' ':
      objekter.add(new Arrow(objekter.get(0).location.x,objekter.get(0).location.y));
      break;
    case 'r':
      setup();
  }
  
}
