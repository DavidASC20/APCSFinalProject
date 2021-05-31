ArrayList<Monster> monsters = new ArrayList<Monster>();
void setup(){
  size(1200, 900);
  fill(255);
  stroke(0);
  rooms(0,0,900, 600);
  
  randomSpawn(monsters, 900, 600);
  
}

void draw(){

  //spawning(monsters);
  fill(255, 0, 0);
  
  for(Monster a : monsters){//if there is a monster there, redify
    rect(a.getX(), a.getY(), 30, 30);
  }
}
  

void rooms(int xpos, int ypos, int width1, int length1){
  for(int i = xpos; i < xpos+width1; i+=30){
    for(int j = ypos; j < ypos+length1; j+=30){
      rect(i, j, 30, 30);
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

//Precondition: roomWidth, roomHeight are multiples the length of one square
void randomSpawn(ArrayList<Monster> monsters, int roomWidth, int roomHeight){
  for(int i = 0; i < 100; i++){//i is amount of monsters
    Monster create = new Monster((int)(Math.random()*(roomWidth/30)+1)*30, (int)(Math.random()*(roomHeight/30))*30);
    monsters.add(create);
  }
}
