public class Monster{
  String monsterType;
  float health;
  float strength;
  float speed;
  int x;
  int y;
  
  public Monster(int x, int y){
     monsterType = "Monster";
     health = 100;
     strength = 5;
     speed = 4;
     this.x=x;
     this.y=y;
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
