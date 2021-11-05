Particle[] stars ;

void setup(){
  size(500, 500);
  stars = new Particle[250];
  for(int i = 0; i < stars.length; i++)
  {
    stars[i] = new Particle();
    stars[0] = new OddballParticle();
  }
}


void draw(){
  background(0);
  for(int i = 0; i < stars.length; i++)
  {
    stars[i].move();
    stars[i].show();
  }
}


class Particle{
  double angle, speed, myX, myY;
  int myColor, mySize;
  
  Particle(){
    myX = 250.0;
    myY = 250.0;
    angle = (Math.random() * (2 * Math.PI));
    speed = (Math.random() * 10);
    myColor = color((int)(Math.random() * 101) + 110, (int)(Math.random() * 101) + 110, (int)(Math.random() * 101) + 110, (int)(Math.random() * 101) + 135);
    mySize = (int)(Math.random() * 41) + 10;
  }
  
  void move(){
    myX = myX + (Math.cos(angle) * speed);
    myY = myY + (Math.sin(angle) * speed);
  }
  
  void show(){
    fill(myColor);
    strokeWeight(3);
    stroke(220);
    ellipse((float)myX, (float)myY, mySize, mySize);
  }
}


class OddballParticle extends Particle{
  void OddBallParticle(){
    myX = 300.0;
    myY = 300.0;
    myColor = color((int)(Math.random() * 101) + 110, (int)(Math.random() * 101) + 110, (int)(Math.random() * 101) + 110);
    mySize = 500;
  }
  
  void move(){
    myX = myX + (int)(Math.random() * 7) - 3;
    myY = myY + (int)(Math.random() * 7) - 3;
  }
  
  void show(){
    fill(myColor);
    strokeWeight(6);
    stroke(color((int)(Math.random() * 101) + 110, (int)(Math.random() * 101) + 110, (int)(Math.random() * 101) + 110));
    rect((float)myX, (float)myY, 150.0, 150.0);
    rect((float)myX + (150.0/4), (float)myY + (150.0/4), 75.0, 75.0);
    rect((float)myX + (75.0/4), (float)myY + (75.0/4), 37.5, 37.5);
    rect((float)myX + (225.0/4), (float)myY + (225.0/4), 37.5, 37.5);
    rect((float)myX + (375.0/4), (float)myY + (375.0/4), 37.5, 37.5);
  }
  
}
