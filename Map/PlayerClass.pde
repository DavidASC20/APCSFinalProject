public class Player{
  String name;
  float health;
  float strength;
  float luck;
  float mp;
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
    strength = 5; 
    luck = 5;
    mp = 15;
    speed = 5;
    name = playerName;
    multiplier = 1.0;
    killed = 0;
  }
  
 String getStats(){
      return "Name: " + name +"\nHealth: " + health * multiplier + "\nStrength: " + strength * multiplier
      + "\nLuck: " + luck * multiplier + "\nMana Points: " + mp * multiplier + "\nSpeed: " + speed * multiplier+ "\nItem: " + item
     + "\nMonsters Killed: " + killed; 
  }
  
public float[] attack(){
    float [] temp = new float[4];
    float attack = strength;
    float hp = health;
    float mana = mp;
    float Speed = speed;
    
    //if(item.equals("Sword")){
    //  attack += 2;
    //}
    //if(item.equals("Armor")){
    //  hp += 20;
    //}if(item.equals("Boots")){
    //  speed+= 1;
    //}if(item.equals("Crystal")){
    //  mana += 3;
    //}
    temp[0] = attack * multiplier;
    temp[1] = hp * multiplier;
    temp[2] = mana * multiplier;
    temp[3] = Speed * multiplier;
    return temp;
  }

void move(int x, int y){//x, y here should be only +30, -30(or whatever the square length ends up being
  this.x+=x;
  this.y+=y;
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
