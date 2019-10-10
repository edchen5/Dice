void setup()
{
  size(400, 400);
  textAlign(CENTER, CENTER);
  noLoop();
}

void draw()
{
	int high = 0;
	int sum = 0;
  	background(127);
  	for(int y = 10; y <= 350; y += 35)
  	{
  		for(int x = 30; x <= 350; x += 35)
  		{
			Die bob = new Die(x, y);
  			bob.show();
  			sum += bob.rand;
        if(high >= sum)
        {
          high = sum;
        }
   		}
  	}

  	textSize(15);
  	fill(0);
  	text("Total: " + sum, 200, 370);
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
    rect(myX, myY, 30, 30, 12);
    fill(0);
    if(rand == 1)
    {
       fill(255, 0, 0);
       ellipse(myX + 15, myY + 15, 5, 5);   
    }
    else if(rand == 2)
    {
      fill(0);
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