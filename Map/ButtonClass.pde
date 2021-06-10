public class Button{
  String use;
  int x, y;
  
  public Button(String u){
    use = u;
  }
  
  void pressed(){
    if(use.equals("Attack")){
      //fighting
    }
    if(use.equals("Play")){
      //title screen
    }
    if(use.equals("Settings")){
      //something?
    }
    if(use.equals("Restart")){
     //do setup again 
    }
  }
  
  void show(int x, int y, int howLong, int howHigh){
    fill(100);
    stroke(128, 15, 6);
    rect(x-(howLong/2), y-(howHigh/2), howLong, howHigh, 15);
    fill(255);
    textSize(32);
    text(use, x, y);
  }
  
}
