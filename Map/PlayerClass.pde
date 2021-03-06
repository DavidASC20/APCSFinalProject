public class Player{
  String name;
  float health;
  float speed;
  float strength;
  float multiplier;
  int killed;
  float x;
  float y;
  PImage[] faces;
  PImage costume;
  
Player(String playerName, float x, float y){
    
    this.x = x;
    this.y = y;
    color c = color(0, 255, 0);
    fill(c);
    rect(x, y, 10, 10);
    fill(0);
    health = 100;
    strength = 10; 
    speed = 5;
    name = playerName;
    multiplier = 1.0;
    killed = 0;
    faces = new PImage[4];
    faces[0]=loadImage("characterUp.png");
    faces[1]=loadImage("characterDown.png");
    faces[2]=loadImage("characterLeft.png");
    faces[3]=loadImage("characterRight.png");
    for(int i = 0; i < 4; i++){
      faces[i].resize(30,30);
    }
    costume = faces[1];
  }
  
PImage getCostume(){
  return costume;
}

void setCostume(int which){
  costume = faces[which-1];
}
  
 String getStats(){
      return "Name: " + name +"\nHealth: " + multiply(health) + "\nStrength: " + multiply(strength) + "\n Speed: " + speed +
        "\nMonsters Killed: " + killed; 
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



void move(int x, int y){//x, y here should be only +30, -30(or whatever the square length ends up being
  this.x+=x;
  this.y+=y;
}

 
float multiply(float x){
  return Math.round(multiplier * x);
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
