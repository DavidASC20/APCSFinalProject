public class Player{
  private String name;
  private float health;
  private float strength;
  private float luck;
  private float mp;
  private float speed; 
  
  public Player(String playerName){
    health = 100;
    strength = 5; 
    luck = 5;
    mp = 15;
    speed = 5;
    name = playerName;
  }
  
  public String getStats(){
      return "Name: " + name +"\nHealth: " + health + "\nStrength: " + strength
      + "\nLuck" + luck + "\nMana Points: " + mp + "\nSpeed: " + speed;
    
    
  }
}
