public class Monster{
  
  float health;
  float strength;
  float speed;
  int x;
  int y;
  
  public Monster(int x, int y){
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
  
 
  
}
