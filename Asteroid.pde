class Asteroid extends Floater
{
	private int rotationSpeed;
	public Asteroid()
	{
		myColor = 128;
    	myCenterX = (int)(Math.random()* 900) + 1;
    	myCenterY = (int)(Math.random()* 900) + 1;
    	myDirectionX = (int)(Math.random() * 10) - 5;
    	myDirectionY = (int)(Math.random() * 10) - 5;
    	myPointDirection = 0;
		rotationSpeed = (int)(Math.random() *5) - 2;
		corners = 10;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 16;
		yCorners[0] = 0;
		xCorners[1] = 14;
		yCorners[1] = -8;
		xCorners[2] = 10;
		yCorners[2] = -16;
		xCorners[3] = -14;
		yCorners[3] = -18;
		xCorners[4] = -10;
		yCorners[4] = -8;
		xCorners[5] = -16;
		yCorners[5] = 0;
		xCorners[6] = -14;
		yCorners[6] = 18;
		xCorners[7] = -8;
		yCorners[7] = 20;
		xCorners[8] = 12;
		yCorners[8] = 16;
		xCorners[9] = 20;
		yCorners[9] = 6;
	}
	public void move(){
		super.turn(rotationSpeed);
		super.move();
	}
	public void setX(int x){myCenterX = x;}  
  	public int getX(){return (int)myCenterX;}   
  	public void setY(int y){myCenterY = y;}   
  	public int getY(){return (int)myCenterY;}   
  	public void setDirectionX(double x){myDirectionX = x;}   
  	public double getDirectionX(){return myDirectionX;}   
  	public void setDirectionY(double y){myDirectionY = y;}   
  	public double getDirectionY(){return myDirectionY;}   
  	public void setPointDirection(int degrees){myPointDirection = degrees;}   
  	public double getPointDirection(){return myPointDirection;} 
}
