public class Boss{
  String monsterType;
  float health;
  float strength;
  float speed;
  int x;
  int y;
  
  public Boss(int x, int y){
    monsterType = "Boss";
     health = 500;
     strength = 50;
     this.x=x;
     this.y=y;
     println(health + " " + strength);
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
