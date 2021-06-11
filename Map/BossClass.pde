public class Boss{
  
  float health;
  float strength;
  float speed;
  int x;
  int y;
  
  public Boss(int x, int y){
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
  
}
