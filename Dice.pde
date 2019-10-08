void setup()
{
  size(400, 400);
  textAlign(CENTER, CENTER);
  noLoop();
}

void draw()
{
  background(127);
  Die bob = new Die(5,5);
  bob.show();
}

void mousePressed()
{
   redraw();
}

class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY, rand;
  Die(int x, int y) //constructor
  {
      myX = x;
      myY = y;
      roll();
  }
  
  void roll()
  { 
    rand = (int)(Math.random() * 6) + 1;
  }
  
  void show()
  {
    noStroke();
    fill(255);
    rect(myX, myY, 30, 30);
    fill(0);
    if(rand == 1)
    {
      ellipse(myX + 15, myY + 15, 5, 5);   
    }
    else if(rand == 2)
    {
      ellipse(myX + 10, myY + 20, 5, 5);   
      ellipse(myX + 20, myY + 10, 5, 5); 
    }
    else if(rand == 3)
    {
      ellipse(myX + 10, myY + 20, 5, 5); 
      ellipse(myX + 15, myY + 15, 5, 5);
      ellipse(myX + 20, myY + 10, 5, 5); 
    }
    else if(rand == 4)
    {
      ellipse(myX + 10, myY + 20, 5, 5); 
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 20, myY + 20, 5, 5); 
      ellipse(myX + 20, myY + 10, 5, 5);
    }
    else if(rand == 5)
    {
      ellipse(myX + 10, myY + 20, 5, 5); 
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 20, myY + 20, 5, 5); 
      ellipse(myX + 20, myY + 10, 5, 5);
      ellipse(myX + 15, myY + 15, 5, 5);         
    }   
    else if(rand == 6)
    {
      ellipse(myX + 10, myY + 22, 5, 5); 
      ellipse(myX + 10, myY + 8, 5, 5);
      ellipse(myX + 20, myY + 22, 5, 5); 
      ellipse(myX + 20, myY + 8, 5, 5);
      ellipse(myX + 10, myY + 15, 5, 5);         
      ellipse(myX + 20, myY + 15, 5, 5);         
    }      
  }
}