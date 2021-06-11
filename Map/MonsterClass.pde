public class Monster{
  String monsterType;
  float health;
  float strength;
  float speed;
  int x;
  int y;
  PImage costume;
  
  public Monster(int x, int y){
     monsterType = "Monster";
     health = 100;
     strength = 5;
     speed = 4;
     double random = Math.random();
     if(random >= 0.5 && random < 0.8){
       health *=2;
       strength *=2;
       speed *=2;
     }
      if(random >= 0.8){
        health *=3;
        strength *=3;
        speed *=3;
      }
     this.x=x;
     this.y=y;
     costume = loadImage("monsterSprite.png");
     costume.resize(30,50);
  }
  
  PImage getCostume(){
    return costume;
  }
  
  public float strength(){
    return strength;
  }
  
  public float health(){
    return health;
  }
  
  public float speed(){
    return speed;
  }
  public int getX(){
    return x;
  }
  
  public int getY(){
    return y;
  }
  
  boolean hover(){
    if (mouseX >= x && mouseX <= x+30 && 
        mouseY >= y && mouseY <= y+30) {
      return true;
    } else {
      return false;
    }
  }
  
  String getStats(){
    return "Name: " + monsterType +"\nHealth: " + health + "\nStrength: " + strength + "\nSpeed: " + speed; 
  }
}
