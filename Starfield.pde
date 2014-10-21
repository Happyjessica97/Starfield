//your code here
Particle [] group;

void setup()
{ //your code here
//background(0);
	size(600,600);

	
	group = new Particle[101];
	for(int i = 0; i < 100 ; i++){
		group[i] = new NormalParticle();
		group[99] = new OddballParticle();
		group[100] =new Jumbo();
	}
	
}
void draw()
{	background(0);
	//background(255, 0, 128);
	//fill(0,0,0);
	//rect(30,30,540,540);
	//your code here
	for(int i = 0; i < group.length; i++){
		group[i].move();
		group[i].show();
	}
	
	

}
class NormalParticle implements Particle
{
	//your code here
	double myX,myY, mySpeed, myAngle;
	int myColor1,myColor2,myColor3,randomNumber;

	//boolean work = true;
	NormalParticle(){
		
		myX = 300.00;
		myY = 300.00;
		myColor1 = (int)(Math.random()*401);
		myColor2 = (int)(Math.random()*401);
		myColor3 = (int)(Math.random()*401);
		myAngle = Math.PI*2*Math.random();
		mySpeed = Math.random()*5;
		randomNumber = (int)(Math.random()*4);
	}
	public void move(){
		myX = (Math.cos(myAngle) * mySpeed) + myX;
		myY = (Math.sin(myAngle) * mySpeed) + myY;	

	}
	public void show(){   
		fill(myColor1,myColor2,myColor3);
		ellipse((float)myX,(float)myY,20,20);

	}
}

class OddballParticle implements Particle
{
	//your code here
	double myX2,myY2, mySpeed2, myAngle2;
	int myColor12,myColor22,myColor32;
	OddballParticle(){
		myX2 = 240.35;
		myY2 = 240.35;
		myColor12 = (int)(Math.random()*401);
		myColor22 = (int)(Math.random()*401);
		myColor32 = (int)(Math.random()*401);
		myAngle2 = Math.PI*2*Math.random();
		mySpeed2 = Math.random()*10;

} public void move(){
	myX2 = (Math.cos(myAngle2) * mySpeed2)+ myX2;
	myY2 = (Math.sin(myAngle2) * mySpeed2)+ myY2;
	

} public void show(){
	fill(myColor12,myColor22,myColor32);
	ellipse((float)myX2,(float)myY2,50,50);
}
}
class Jumbo extends NormalParticle{

	Jumbo(){
	myColor1 = 255;
	myColor2 = 255;
	myColor3 = 255;
	}
	public void show() {
		fill(myColor1,myColor2,myColor3);
		ellipse((float)myX,(float)myY,70,70);
	}


}
interface Particle
{
	//your code here
	public void show();
	public void move();

}


