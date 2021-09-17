ArrayList<Objekt> objekter = new ArrayList<Objekt>();
ArrayList<Platform> platforme = new ArrayList<Platform>();
int dir = 20,level = 1, levels = 3;
String wonText = "";
float walk = 0;

void setup(){
  wonText = "";
  objekter.clear();
  platforme.clear();
  fullScreen();
  switch(level){
    case 1:
      level1();
      break;
    case 2:
      level2();
      break;
  }

  /* random level generator som var ret dårlig
  objekter.add(new Player(150,500));
  platforme.add(new Platform(150,600,200,20,0));
  for(int i = 0;i< 20;i++){
    float pX = random(150,width-150),pY = random(150,height-50);
    platforme.add(new Platform(pX,pY,200,20,int(random(0,1.5))*100));
    if(platforme.get(platforme.size()-1).move == 0){
      objekter.add(new Simp(pX,pY));
    }
    for(Platform r:platforme){
      int y = platforme.size();
      if(dist(r.location.x,r.location.y,platforme.get(platforme.size()-1).location.x,platforme.get(platforme.size()-1).location.y) < 250 && r.location.x != platforme.get(platforme.size()-1).location.x){
        platforme.remove(platforme.get(platforme.size()-1));
        if(objekter.size()>1)
          objekter.remove(objekter.get(objekter.size()-1));
      }
      if(y != platforme.size())
        break;
    }
  }
  objekter.add(new Girl(1000,500));
  */
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
  noStroke();
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
  objekter.get(0).speed.x += walk;
  for(Platform r: platforme){
    r.update();
    r.display();
  }
  
  textSize(200);
  text(wonText,width/2,height/2);
  
}

void keyPressed(){
  switch(key){
    case'a':
      walk = -0.5;
      dir = -20;
      break;
    case'd':
      walk = 0.5;
      dir = 20;
      break;
    case'w':
      if(abs(objekter.get(0).speed.y) < 1.1)
        objekter.get(0).speed.y -= 20;
        walk = 0;
      break;
    case ' ':
      objekter.add(new Arrow(objekter.get(0).location.x,objekter.get(0).location.y));
      break;
    case 'r':
      setup();
  }
}

void keyReleased(){
  switch(key){
    case'a':
      walk = 0;
      break;
    case'd':
      walk = 0;
      break;
  }
}
  
void gameOver(boolean won){
  if(won){
    wonText = "You Won!";
    if(level<levels){
      level ++;
      setup();
    }
  }
  if(!won)
    wonText = "Game Over!";
}
