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
    if(scene.equals("Title") && use.equals("Play")){
      scene = "Game";
      println("pressed playButton");
    }
    if(use.equals("Settings")){
      scene = "Settings";
    }
    if(use.equals("Restart")){
     scene = "Game";
     println("pressed restartButton");  
    }
    if(scene.equals("Title") && use.equals("Instructions")){
      scene = "Instructions";
      println("pressed instruction");
    }
    if(scene.equals("Instructions")&& use.equals("back to title")){
      scene = "Title";
      println("pressed titleButton");
    }
    if(scene.equals("Lose") && use.equals("back to title")){
      scene = "Title";
      println("pressed titleButton");
      randomSpawn(monsters, 150, 150, 900, 600, 30);
      guy = new Player("name", 180, 180);
      boss = new Boss(990, 690); 
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
  
