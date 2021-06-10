ArrayList<Monster> monsters = new ArrayList<Monster>();
ArrayList<Wall> walls = new ArrayList<Wall>();
Player guy;
Boss boss;
void setup(){
  size(1200, 900);
  fill(255);
  stroke(0);
 
  
  randomSpawn(monsters, 150, 150, 900, 600, 30);
  guy = new Player("name", 180, 180);
  boss = new Boss(990, 690); 
}

void display(){
  text(guy.getStats(), 0, 0); 
}

void draw(){
  background(0);
  display();
  //spawning(monsters);
  fill(255);
  stroke(0);
  rooms(150,150,900, 600);
  display();
  for(Monster a : monsters){//if there is a monster there, redify
    fill(255, 0, 0);
    rect(a.getX(), a.getY(), 30, 30);
  }
  for(Wall a : walls){//if there is a wall there, greyify
    fill(100);
    rect(a.getX(), a.getY(), 30, 30);
  }
  fill(0, 255, 0);
  rect(guy.getX(), guy.getY(), 30, 30);//player is green
  fill(255, 0, 255);
  rect(boss.getX(), boss.getY(), 30, 30);
  fill(255, 0, 0);
  for(int i = 0; i < monsters.size(); i++){
    Monster mon = monsters.get(i);
    if(mon.getX() == guy.getX() && mon.getY() == guy.getY()){
      fight(mon, guy);
    }
  }if(boss.getX() == guy.getX() && boss.getY() == guy.getY()){
      fight(boss, guy);
    }
}
  

void rooms(int xpos, int ypos, int width1, int length1){//can change this to be corners, atm it is top left coords, length, width
//this fills in all whitespace
  for(int i = xpos; i < xpos+width1; i+=30){//establishes the grid system
    for(int j = ypos; j < ypos+length1; j+=30){
      if(i == xpos || i == xpos+width1-30 || j == ypos || j == ypos+length1-30){//is wall
        Wall newWall = new Wall(i, j);
        walls.add(newWall);
      }
      fill(255);
      stroke(0);
      rect(i, j, 30, 30);//all white
    }
  }
  
  
}

void spawning(ArrayList<Monster> monsters){
  Monster first = new Monster(30, 30);
  Monster second = new Monster(60, 150);
  Monster third = new Monster(150, 270);
  monsters.add(first);
  monsters.add(second);
  monsters.add(third);
}

//Precondition: roomWidth, roomHeight, roomX, roomY are multiples the length of one square
void randomSpawn(ArrayList<Monster> monsters,  int roomX, int roomY, int roomWidth, int roomHeight, int monsterCount){
  int howManyDuplicates = 0;//if the room somehow fills up, it won't go forever due to duplicate removal
  for(int i = 0; i < monsterCount; i++){//i is amount of monsters
    boolean duplicate = false;
    int x = (int)(Math.random()*((roomWidth/30)-2))*30+roomX+30;
    //(Math.random()*((roomWidth/30)-2)) gives the actual grid number, not processing grid
    //the -2 part elimnates the walls of the room, monsters can't spawn there, the +30 at the very end translates it so the walls are correct
    //*30 after the above translates it back into processing grid numbers so it gets drawn right
    //the +roomX translates it into the room number
    int y = (int)(Math.random()*((roomHeight/30)-2))*30+roomY+30;
    println(x + " " + y);
    Monster create = new Monster(x, y);
    for(Monster a : monsters){//check if its on top of an already spawned monster
      if(create.getX()==a.getX() && create.getY()==a.getY()){
        duplicate=true;
        break;//faster loopings
      }
    }
    if(!duplicate){//redo until it isn't a duplicate
      monsters.add(create);
    }
    else{
      i--;
      howManyDuplicates++;
    }
    if(howManyDuplicates> monsterCount*2){
      break;
    }
  }
}


  
  void fight(Monster b, Player p){
  float PlayerHealth = p.health();
  float PlayerStrength = p.strength();
  float PlayerSpeed = p.speed();
  float MonsterHealth = b.health();
  float MonsterStrength = b.strength();
  float MonsterSpeed = b.speed();
  
  while(PlayerHealth >= 0 || MonsterHealth >= 0){
    if(PlayerSpeed > MonsterSpeed){
      MonsterHealth -= PlayerStrength;
      if(MonsterHealth <= 0){
        break;
      }PlayerHealth -= MonsterStrength;
    }else{
      PlayerHealth -= MonsterStrength;
      if(PlayerHealth <= 0){
        break;
      }MonsterHealth -= PlayerStrength;
    }
    
    
  }if(PlayerHealth > MonsterHealth){
    for(int i = 0; i < monsters.size(); i++){
      if(monsters.get(i).getX() == b.getX() && monsters.get(i).getY() == b.getY()){
        monsters.remove(i);
      }
    }
      p.kill();
    }
    else{
      clear();
      text("You died, Try Again", width / 2, height / 2);
    }
}

void fight(Boss b, Player p){
  float PlayerHealth = p.health();
  float PlayerStrength = p.strength();
  float PlayerSpeed = p.speed();
  float BossHealth = b.health();
  float BossStrength = b.strength();
  float BossSpeed = b.speed();
  
  while(PlayerHealth >= 0 || BossHealth >= 0){
    if(PlayerSpeed > BossSpeed){
      BossHealth -= PlayerStrength;
      if(BossHealth <= 0){
        break;
      }PlayerHealth -= BossStrength;
    }else{
      PlayerHealth -= BossStrength;
      if(PlayerHealth <= 0){
        break;
      }BossHealth -= PlayerStrength;
    }
    
    
  }
  if(PlayerHealth > 0){
    clear();
    text("You beat the game!", width / 2 - 40, height / 2);
  }clear();
  text("You died, Try Again", width / 2 - 40, height / 2);
}



  
  
  
  


void keyPressed(){
  
  if(key == 119 || key == 87){//w or W, up
    guy.move(0,-30);
    for(Wall a : walls){
      if(dist(guy.getX(), guy.getY(), a.getX(), a.getY())<=5){
        guy.move(0,30);
      }
    }
    
  }
  if(key == 97 || key == 65){//a or A, left
   guy.move(-30,0);
   for(Wall a : walls){
      if(dist(guy.getX(), guy.getY(), a.getX(), a.getY())<=5){
        guy.move(30,0);
      }
    }
  }
  if(key == 115 || key == 83){//s or S, down
   guy.move(0,30);
   for(Wall a : walls){
      if(dist(guy.getX(), guy.getY(), a.getX(), a.getY())<=5){
        guy.move(0,-30);
      }
    }
  }
  if(key == 100 || key == 68){//d or D, right
   guy.move(30,0);
   for(Wall a : walls){
      if(dist(guy.getX(), guy.getY(), a.getX(), a.getY())<=5){
        guy.move(-30,0);
      }
    }
  }

}
