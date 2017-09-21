//Dice one;
void setup()
{
  size(600, 600);
  noLoop();
}
void draw()
{
  //your code here
  background(197);
  for(int x = 10; x<=400; x+=50 ){
  for(int y = 10; y<=400; y+=50 ){
  Die one = new Die(x,y);
  one.show();
  }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY, i;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX= x;
    myY= y;
    roll();
  }
  void roll()
  {
    //your code here
    i = (int)(Math.random()*6)+1;
    // i = 6;
  }
  void show()
  {
    //your code here
    fill(255, 255, 255);
    rect(myX, myY, 50, 50, 10);
    if (i == 1) {
      fill(0, 0, 0);
      ellipse(myX+25, myY+25, 10, 10);
    }
    if (i ==2) {
      fill(0, 0, 0);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
    }
    if (i ==3) {
      fill(0, 0, 0);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
    }
    if (i ==4) {
      fill(0, 0, 0);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
    }
    if (i ==5) {
      fill(0, 0, 0);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    }

    if (i ==6) {
      fill(0, 0, 0);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
    }
  }
}
//for(int y = 5; y<=500; x+=50 )
//for(int x = 5)
