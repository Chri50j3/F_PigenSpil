ArrayList<Objekt> objekter = new ArrayList<Objekt>();

void setup(){
  fullScreen();
  objekter.add(new Player(100,500));
}

void draw(){
  clear();
  for(Objekt r: objekter){
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
      objekter.get(0).speed.y -= 20;
  }
  
}
