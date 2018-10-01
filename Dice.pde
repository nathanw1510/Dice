int total = 0;

void setup()
{
	noLoop();
	size(600,600);
	background(0);
}
void draw()
{
	background(0);
	for(int y = 30; y <= 560; y+= 60){
		for(int x = 30; x <= 560; x+= 60){
			Die dice = new Die(x,y);
			dice.show();
			fill(255);
			textSize(30);
			textAlign(CENTER);
			total = total + dice.roll;
		}
	}
	text("Total: " +total,300,590);
}
void mousePressed()
{
	redraw();
	total = 0;
}

class Die //models one single dice cube
{
	int myX,myY,roll,total;	
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();
		total = 0;
	}
	void roll()
	{
		roll = (int)(Math.random()*6)+1;
	}
	void show()
	{
		fill(255);
		rect(myX,myY,50,50,10);
		if(roll == 1){
			fill(0);
			ellipse(myX+25,myY+25,8,8);
			}
		if(roll == 2){
			fill(0);
			ellipse(myX+12.5,myY+12.5,8,8);
			ellipse(myX+37.5,myY+37.5,8,8);
			}
		if(roll == 3){
			fill(0);
			ellipse(myX+12.5,myY+12.5,8,8);
			ellipse(myX+25,myY+25,8,8);
			ellipse(myX+37.5,myY+37.5,8,8);
			}
		if(roll == 4){
			fill(0);
			ellipse(myX+12.5,myY+12.5,8,8);
			ellipse(myX+37.5,myY+37.5,8,8);
			ellipse(myX+37.5,myY+12.5,8,8);
			ellipse(myX+12.5,myY+37.5,8,8);
			}
		if(roll == 5){
			fill(0);
			ellipse(myX+12.5,myY+12.5,8,8);
			ellipse(myX+37.5,myY+37.5,8,8);
			ellipse(myX+37.5,myY+12.5,8,8);
			ellipse(myX+12.5,myY+37.5,8,8);
			ellipse(myX+25,myY+25,8,8);
			}
		if(roll == 6){
			fill(0);
			ellipse(myX+12.5,myY+12.5,8,8);
			ellipse(myX+37.5,myY+37.5,8,8);
			ellipse(myX+37.5,myY+12.5,8,8);
			ellipse(myX+12.5,myY+37.5,8,8);
			ellipse(myX+12.5,myY+25,8,8);
			ellipse(myX+37.5,myY+25,8,8);
			}
		}
}
