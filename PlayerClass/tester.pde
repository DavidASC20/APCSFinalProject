Player p1;
void settings(){
  size(1000, 800);
}
void setup(){
  p1 = new Player("David", width / 2, height / 2);
}
void draw(){
  background(240);
  
}



void keyPressed(){
  if(key == 'w'){
    p1.y -=1;
  }if(key == 'a'){
    p1.x -=1;
  }if(key == 's'){
    p1.y += 1;
  }if(key == 'd'){
    p1.x +=1;
  }
}
