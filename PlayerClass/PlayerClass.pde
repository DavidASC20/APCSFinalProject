public class Player{
  private String name;
  private float health;
  private float strength;
  private float luck;
  private float mp;
  private float speed; 
  private String item;
  private float x;
  private float y;
  
  
  public Player(String playerName, float x, float y){
    this.x = x;
    this.y = y;
    health = 100;
    strength = 5; 
    luck = 5;
    mp = 15;
    speed = 5;
    name = playerName;
  }
  
  public String getStats(){
      return "Name: " + name +"\nHealth: " + health + "\nStrength: " + strength
      + "\nLuck" + luck + "\nMana Points: " + mp + "\nSpeed: " + speed + "\nItem: " + item; 
  }
  
  public float[] attack(){
    float [] temp = new float[4];
    float attack = strength;
    float hp = health;
    float mana = mp;
    float Speed = speed;
    
    if(item.equals("Sword")){
      attack += 2;
    }
    if(item.equals("Armor")){
      hp += 20;
    }if(item.equals("Boots")){
      speed+= 1;
    }if(item.equals("Crystal")){
      mana += 3;
    }
    temp[0] = attack;
    temp[1] = hp;
    temp[2] = mana;
    temp[3] = Speed;
    return temp;
  }
  
  public String equipItem(String equipment){
    item = equipment;
    return "You have equipped: " + item;
  }
  
  public void moveUp(){
      y-=1;
  }
  
  public void moveLeft(){
    x-=1;
  }
  
  public void moveRight(){
    x+=1;
  }
  
  public void moveDown(){
    x+= 1;
  }
  
  
  
}
