public class Player{
  String name;
  float health;
  float strength;
  float luck;
  int mp;
  float speed; 
  String item;
  float multiplier;
  int killed;
  float x;
  float y;
  
Player(String playerName, float x, float y){
    
    this.x = x;
    this.y = y;
    color c = color(0, 255, 0);
    fill(c);
    rect(x, y, 10, 10);
    fill(0);
    health = 100;
    strength = 10; 
    luck = 5;
    mp = 15;
    speed = 5;
    name = playerName;
    multiplier = 1.0;
    killed = 0;
  }
  
 String getStats(){
      return "Name: " + name +"\nHealth: " + multiply(health) + "\nStrength: " + multiply(strength)
      + "\nLuck: " + multiply(luck) + "\nMana Points: " + multiply(mp) + "\nSpeed: " + multiply(speed)+ "\nItem: " + item
     + "\nMonsters Killed: " + killed; 
  }
  
public float health(){
  return health * multiplier;
}

public float strength(){
  return strength * multiplier;
}

public float speed(){
  return speed;
}

public int mp(){
  return mp;
}

void move(int x, int y){//x, y here should be only +30, -30(or whatever the square length ends up being
  this.x+=x;
  this.y+=y;
}

 
float multiply(float x){
  return Math.round(multiplier * x);
}
    
String equipItem(String equipment){
    item = equipment;
    return "You have equipped: " + item;
}

float getX(){
  return x;
}

float getY(){
  return y;
}
void kill(){
  multiplier += 0.1;
  killed++;
}
 

}
