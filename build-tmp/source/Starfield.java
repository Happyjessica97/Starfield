import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Starfield extends PApplet {

//your code here
Particle [] group;
Particle [] more;
boolean clicked = true; 
public void setup()
{ //your code here
//background(0);
	size(600,600);

}
public void draw()
{	
	if(mousePressed){
		group = new Particle[101];
	for(int i = 0; i < 100 ; i++){
		group[i] = new NormalParticle();
		group[99] = new OddballParticle();
		group[100] = new Jumbo();
		clicked = false;
	}
}
	
	
//background(0);
	if(clicked == false){
	for(int i = 0; i < group.length; i++){
		group[i].move();
		group[i].show();
	}

}
	

}

class NormalParticle implements Particle
{
	//your code here
	double myX,myY, mySpeed, myAngle;
	int myColor1,myColor2,myColor3,randomNumber;

	//boolean work = true;
	NormalParticle(){
		
		myX = mouseX;
		myY = mouseY;
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
		//noStroke(); 
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
		myX2 = mouseX;
		myY2 = mouseY;
		myColor12 = (int)(Math.random()*401);
		myColor22 = (int)(Math.random()*401);
		myColor32 = (int)(Math.random()*401);
		myAngle2 = Math.PI*2*Math.random();
		mySpeed2 = Math.random()*10;

} public void move(){
	myX2 = (Math.cos(myAngle2) * mySpeed2)+ myX2;
	myY2 = (Math.sin(myAngle2) * mySpeed2)+ myY2;
	/*if(clicked == true){
	 myAngle2 = Math.PI*2*Math.random();
	 //clicked = false;
	}*/

} public void show(){
	fill(myColor12,myColor22,myColor32);
	ellipse((float)myX2,(float)myY2,50,50);
}
}
class Jumbo extends NormalParticle{
	int myColor;
	Jumbo(){
	myColor = color(255,223,0);
	}
	public void show() {
		//noStroke();
		fill(myColor);
		ellipse((float)myX,(float)myY,70,70);
	}


}
interface Particle
{
	//your code here
	public void show();
	public void move();

}


  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Starfield" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
