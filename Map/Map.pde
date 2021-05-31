void setup(){
  size(1200, 900);
  fill(255);
  stroke(0);
  rooms(0,0,1200, 900);
}

void rooms(int xpos, int ypos, int width1, int length1){
  for(int i = xpos; i < xpos+width1; i+=30){
    for(int j = ypos; j < ypos+length1; j+=30){
      rect(i, j, 30, 30);
    }
  }
  spawning();
}

void spawning(ArrayList<Monster> monsters){
  Monster first = new Monster(30, 30);
  Monster second = new Monster(60, 150);
  
}
