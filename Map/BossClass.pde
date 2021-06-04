class Boss{
  
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
  
  public float attack(){
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
  
  float[] getStats {
    float[] temp = new float[2];
    float[0] = attack;
    float[1] = health;
    
    return temp;
  }
  
}
