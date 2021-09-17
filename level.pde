
void level1(){
  //player
  objekter.add(new Player(200,900));
  
  //platforms
  platforme.add(new Platform(200,1000,200,20,0));
  platforme.add(new Platform(450,900,100,20,0));
  platforme.add(new Platform(750,800,300,20,0));
  platforme.add(new Platform(750,670,100,20,0));
  platforme.add(new Platform(650,550,100,20,0));
  platforme.add(new Platform(850,400,100,20,0));
  platforme.add(new Platform(1150,300,300,20,0));
  platforme.add(new Platform(1400,250,100,20,0));
  platforme.add(new Platform(1650,200,300,20,0));
  
  //girl
  objekter.add(new Girl(1650,140));
  
  //simps
  objekter.add(new Simp(1150,300));

}
