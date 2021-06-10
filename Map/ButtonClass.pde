public class Button{
  String use;
  int x, y;
  int howLong, howHigh;
  public Button(String u, int x, int y, int howLong, int howHigh){
    use = u;
    this.x = x;
    this.y = y;
    this.howLong = howLong;
    this.howHigh = howHigh;
  }
  
  void pressed(){
    if(use.equals("Attack")){
      //fighting
    }
    if(use.equals("Play")){
      scene = "Game";
    }
    if(use.equals("Settings")){
      scene = "Settings";
    }
    if(use.equals("Restart")){
     scene = "Game";
    }
    if(use.equals("Instructions")){
      scene = "Instructions";
    }
  }
  
  void show(){
    fill(100);
    stroke(128, 15, 6);
    rect(x, y, howLong, howHigh, 15);
    fill(255);
    textSize(32);
    textAlign(CENTER, CENTER);
    text(use, x+(howLong/2), y+(howHigh/2));
  }
  
  boolean hover(){
    if (mouseX >= x && mouseX <= x+howLong && 
        mouseY >= y && mouseY <= y+howHigh) {
      return true;
    } else {
      return false;
    }
  }
}
  