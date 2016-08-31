int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int startX2 = 0;
int startY2 = 150;
int endX2 = 0;
int endY2 = 150;

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
	while (endX2 < 300)
	{
		endX2 = startX2 + ((int)(Math.random()*10));
		endY2 = startY2 + ((int)((Math.random()*19)-9));
		line(startX2, startY2, endX2, endY2);
		startX2 = endX2;
		startY2 = endY2;
	}

}
void mousePressed()
{
	startX = (int)(Math.random()*301);
	startY = 0;
	endX = startX;
	endY = 0;
	startX2 = 0;
	startY2 = (int)(Math.random()*301);
	endX2 = 0;
	endY2 = startY2;
}

