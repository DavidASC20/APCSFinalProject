class Monster{
  
  float health;
  float strength;
  float speed;
  float luck;
  int x;
  int y;
  
  public Monster(int x, int y){
     health = 100;
     strength = 5;
     this.x=x;
     this.y=y;
  }
  
  public float attack(){
    return strength;
  }
  
  public float health(){
    return hp;
  }
  
}

void setup(){
  Monster a = new Monster(0,0);
  println(a.attack());
}
