
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
  objekter.add(new Simp(1150,300,300));
  objekter.add(new Simp(750,800,300));
}

void level2(){
  //player
  objekter.add(new Player(1650,1000));
  
  //platforms
  platforme.add(new Platform(1650,1000,300,20,0));
  platforme.add(new Platform(1400,950,100,20,0));
  platforme.add(new Platform(1200,900,200,20,0));
  platforme.add(new Platform(750,800,300,20,100));
  platforme.add(new Platform(350,1000,500,20,0));
  platforme.add(new Platform(100,550,20,900,0));
  platforme.add(new Platform(400,500,20,600,0));
  platforme.add(new Platform(750,400,300,20,0));
  platforme.add(new Platform(1100,300,200,20,0));
  platforme.add(new Platform(1450,200,300,20,0));
  platforme.add(new Platform(1750,800,300,20,0));
  platforme.add(new Platform(1700,550,20,500,0));
  
  platforme.add(new Platform(150,300,100,10,0));
  platforme.add(new Platform(150,500,100,10,0));
  platforme.add(new Platform(150,700,100,10,0));
  platforme.add(new Platform(150,900,100,10,0));
  platforme.add(new Platform(350,800,100,10,0));
  platforme.add(new Platform(350,600,100,10,0));
  platforme.add(new Platform(350,400,100,10,0));
  platforme.add(new Platform(400,200,200,10,0));

  //girl
  objekter.add(new Girl(1800,740));
  
  //simps
  objekter.add(new Simp(1200,900,200));
  objekter.add(new Simp(750,400,300));
  objekter.add(new Simp(1100,300,200));
  objekter.add(new Simp(1450,200,300));
  objekter.add(new Simp(1650,800,50));
  objekter.add(new Simp(450,1000,300));
}
