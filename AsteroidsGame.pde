Spaceship bob;
public void setup() 
{
	size(900, 900);
	bob = new Spaceship();
}
public void draw() 
{
	background(0);
	bob.show();
}
public void keyPressed()
{
	if(key == 'f')
	{
		bob.setX((int)(Math.random()*900) + 1);
		bob.setY((int)(Math.random()*900) + 1);
		bob.setDirectionX((double)(Math.random()*360) + 1);
		bob.setDirectionY((double)(Math.random()*360) + 1);
		bob.setPointDirection((int)(Math.random()*360) + 1);
	}
	if(key == 'w')
	{
		accelerating == true;
	}
	if(key == 'a')
	{
		bob.turn(10);
	}
	if(key == 'd')
	{
		bob.turn(-10);
	}
}