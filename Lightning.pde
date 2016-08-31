int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int startX2;
int startY2;
int endX2;
int endY2;
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
	egg();

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

void egg()
{
	stroke(100,100,100);
	ellipse(150, 275, 35, 50);
	beginShape();
	vertex(132.5, 275);
	vertex(137.5, 277.5);
	vertex(142.5, 272.5);
	vertex(147.5, 277.5);
	vertex(152.5, 272.5);
	vertex(157.5, 277.5);
	vertex(162.5, 272.5);
	vertex(167.5,275);
	endShape();
}