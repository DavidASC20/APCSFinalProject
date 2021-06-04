public class Boss{
  
  float health;
  float strength;
  int x;
  int y;
  
  public Boss(int x, int y){
     health = 1000;
     strength = 75;
     this.x=x;
     this.y=y;
  }
  
  public float strength(){
    return strength;
  }
  
  public float health(){
    return health;
  }
  
  public int getX(){
    return x;
  }
  
  public int getY(){
    return y;
  }
  
public float[] attack(){
    float[] temp = new float[2];
    temp[0] = strength;
    temp[1] = health;
    
    return temp;
  }
  
}
