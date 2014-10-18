//your code here
Particle [] group;

void setup()
{ //your code here
//background(0);
	size(600,600);

	group = new Particle[100];
	for(int i = 0; i < 99 ; i++){
		group[i] = new NormalParticle();
		group[99] = new OddballParticle();
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
		
		/*//myX = (Math.cos(myAngle) * mySpeed) + myX;
		//myY = (Math.sin(myAngle) * mySpeed) + myY;
		if(randomNumber == 0){
			myX = (Math.cos(myAngle) * mySpeed) + myX;
		}else if(randomNumber == 1){
			myY = (Math.sin(myAngle) * mySpeed) + myY;
		}else if(randomNumber == 2){
			myX = -((Math.cos(myAngle) * mySpeed) + myX);
		}else if(randomNumber == 3){
			myY = -((Math.sin(myAngle) * mySpeed) + myY);
		}

		/*if(get((int)myX-15,(int)myY-15) == color(0)){
			
			//myY = (Math.sin(myAngle) * mySpeed) + myY;

		}else{
			
			myY = -((Math.sin(myAngle) * mySpeed) + myY);
		}*/
		myX = (Math.cos(myAngle) * mySpeed) + myX;
		myY = (Math.sin(myAngle) * mySpeed) + myY;
		

		

	}
	public void show(){   
		fill(myColor1,myColor2,myColor3);
		ellipse((float)myX,(float)myY,30,30);

	}
}

class OddballParticle implements Particle
{
	//your code here
	double myX2,myY2, mySpeed2, myAngle2;
	int myColor12,myColor22,myColor32;
	OddballParticle(){
		myX2 = 300.00;
		myY2 = 300.00;
		myColor12 = (int)(Math.random()*401);
		myColor22 = (int)(Math.random()*401);
		myColor32 = (int)(Math.random()*401);
		myAngle2 = Math.PI*2*Math.random();
		mySpeed2 = Math.random()*10;

} public void move(){
	myX2 = (Math.cos(myAngle2) * mySpeed2)+ myX2;
	myY2 = (Math.sin(myAngle2) * mySpeed2)+ myY2;
	if((myX2 >= 600)&&(myX2 <= 0)&&(myY2 <= 0)&&(myY2 >= 600)){
		myX2 = 300.00;
		myY2 =300.00;
	}
	

} public void show(){
	fill(255,255,255);
	ellipse((float)myX2,(float)myY2,50,50);
}
}

interface Particle
{
	//your code here
	public void show();
	public void move();

}


