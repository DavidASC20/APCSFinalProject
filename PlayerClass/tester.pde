Player p1;
void settings(){
  size(1000, 800);
}
void setup(){
  p1 = new Player("David", width / 2, height / 2);
  text(p1.getStats(), 0, 0);
}


//void draw(){
//   background(240, 240, 240);
//   p1.move();
//   p1.display();
//}


void keyPressed(){
  if(key == 'w'){
    p1.moveUp();
  }if(key == 'a'){
    p1.moveLeft();
  }if(key == 's'){
    p1.moveDown();
  }if(key == 'd'){
    p1.moveRight();
  }
}
