int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;


void setup()
{
  size(300,300);
  strokeWeight(2);
}
void draw()
{
	background(0);
	stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	while (endY < 300)
	{
		endX = startX + ((int)((Math.random()*19)-9));
		endY = startY + ((int)(Math.random()*10));
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}

}
void mousePressed()
{
	startX = (int)(Math.random()*301);
	startY = 0;
	endX = startX;
	endY = 0;
}

