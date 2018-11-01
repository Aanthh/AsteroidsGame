Spaceship bob;
Star[] nightSky = new Star[200];
public void setup() 
{
	size(900, 900);
	bob = new Spaceship();
	for(int i = 0; i<nightSky.length; i++)
	{
		nightSky[i] = new Star();
	}
}
public void draw() 
{
	background(0);
	for(int i = 0; i < nightSky.length; i++)
	{
		nightSky[i].show();
	}
	bob.show();
	bob.move();
}
public void keyPressed()
{
	if(key == 'f')
	{
		bob.setX((int)(Math.random()*900) + 1);
		bob.setY((int)(Math.random()*900) + 1);
		bob.setDirectionX((double)(0));
		bob.setDirectionY((double)(0));
		bob.setPointDirection((int)(Math.random()*360) + 1);
	}
	if(key == 'w')
	{
		bob.accelerate(.5);
	}
	if(key == 'a')
	{
		bob.turn(-10);
	}
	if(key == 's')
	{
		bob.accelerate(-.5);
	}
	if(key == 'd')
	{
		bob.turn(10);
	}
}