Spaceship bob;
Star[] nightSky = new Star[200];
ArrayList <Asteroid> meteors = new ArrayList <Asteroid>();
int numAsteroids = 20;
public void setup() 
{
	size(900, 900);
	bob = new Spaceship();
	for(int i = 0; i<nightSky.length; i++)
	{
		nightSky[i] = new Star();
	}
	for(int i = 0; i < numAsteroids; i++)
	{
		meteors.add(new Asteroid());
	}
}
public void draw() 
{
	background(0);
	for(int i = 0; i < nightSky.length; i++)
	{
		nightSky[i].show();
	}
	for(int i = 0; i < meteors.size(); i++)
	{
		meteors.get(i).move();
		meteors.get(i).show();
		float d = dist(bob.getX(), bob.getY(), meteors.get(i).getX(), meteors.get(i).getY());
		if(d < 20)
		{
			meteors.remove(i);
		}
	}
	bob.show();
	bob.move();
}
public void keyPressed()
{
	if(key == 'f')
	{
		background(155);
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
