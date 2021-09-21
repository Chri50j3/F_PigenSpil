ArrayList<Objekt> objekter = new ArrayList<Objekt>();
ArrayList<Platform> platforme = new ArrayList<Platform>();
int dir = 20,level = 1, levels = 3;
String wonText = "";
float walk = 0;
boolean keys = false;

//baggrund
Locker skab1;
Locker skab2;
Locker skab3;
Locker skab4;
Locker skab5;
Locker skab6;

void setup(){
  keys = false;
  wonText = "";
  objekter.clear();
  platforme.clear();
  fullScreen();
  //size(1920,1080);
  switch(level){
    case 1:
      level1();
      break;
    case 2:
      level2();
      break;
    case 3:
      level3();
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
  //baggrund
  rectMode(CORNER);
  background(219, 212, 193);
  skab1 = new Locker(0, (height/1.6 - 230));
  skab2 = new Locker(width/8*1, (height/1.6 - 230));
  skab3 = new Locker(width/8*2, (height/1.6 - 230));
  skab4 = new Locker(width/8*5, (height/1.6 - 230));
  skab5 = new Locker(width/8*6, (height/1.6 - 230));
  skab6 = new Locker(width/8*7, (height/1.6 - 230));
  
  noStroke();
  fill(184, 180, 171); 
  rect(0, height/1.6, width, height);
  stroke(0);
  strokeWeight(0.5);
  fill(105,41,22);
  rect(width/2-200, (height/1.6 - 240), 260, 240);
  fill(138, 137, 135);
  circle(width/2-200+260/2-20, (height/1.6 - 240)+240/2, 10);
  circle(width/2-200+260/2+20, (height/1.6 - 240)+240/2, 10);
  stroke(0);
  line(width/2-200+260/2, (height/1.6 - 240),width/2-200+260/2, height/1.6);
  stroke(0);
  strokeWeight(0.5);
  
  skab1.display();
  skab2.display();
  skab3.display();
  skab4.display();
  skab5.display();
  skab6.display();
  
  rectMode(CENTER);  
  noStroke();

//Andet
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
  
  fill(255);
  textSize(200);
  text(wonText,width/2,height/2);
  
  if(!keys){
    rect(100,200,90,90,5);
    rect(200,200,90,90,5);
    rect(300,200,90,90,5);
    rect(400,200,90,90,5);
    rect(200,300,290,90,5);
    
    fill(0);
    textSize(40);
    
    text("D",200,210);
    text("A",100,210);
    text("F",300,210);
    text("R",400,210);
    text("SPACE",200,310);
    
    textSize(20);
    text("Right",200,230);
    text("Left",100,230);
    text("Shoot
    ",300,230);
    text("Restart",400,230);
    text("jump",200,330);


  }
  
}

void keyPressed(){
  keys = true;
  switch(key){
    case'a':
      walk = -0.5;
      dir = -20;
      break;
    case'd':
      walk = 0.5;
      dir = 20;
      break;
    case' ':
      if(abs(objekter.get(0).speed.y) < 1.1)
        objekter.get(0).speed.y -= 20;
        walk = 0;
      break;
    case 'f':
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
