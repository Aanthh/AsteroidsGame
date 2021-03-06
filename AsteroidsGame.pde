Spaceship bob;
Star[] nightSky = new Star[200];
ArrayList <Asteroid> meteors = new ArrayList <Asteroid>();
ArrayList <Bullet> bill = new ArrayList <Bullet>();
int numAsteroids = 50; 
int count;
public void setup() 
{
	count = 0;
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
	text("Score: " + count, 20, 30);
	textSize(30);
	for(int i = 0; i < bill.size(); i++){
			bill.get(i).show();
			bill.get(i).move();
			if(bill.get(i).getX() > 899 || bill.get(i).getX() < 1 || bill.get(i).getY() > 899 || bill.get(i).getY() < 1)
			{
				bill.remove(i);
			}
	}
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
	for(int i = 0; i < bill.size(); i++)
	{
		for(int f = 0; f < meteors.size(); f++)
		{
			float d2 = dist(bill.get(i).getX(), bill.get(i).getY(), meteors.get(f).getX(), meteors.get(f).getY());
			if(d2 < 20)
			{
				meteors.remove(f);
				bill.remove(i);
				count = count + 1;
				break;
			}
		}
	}
	bob.show();
	bob.move();
}
public void keyPressed()
{
	if(key == ' ')
	{
		bill.add(new Bullet(bob));
	}
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
