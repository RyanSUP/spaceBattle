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

public class spaceBattle extends PApplet {

int frameWidth = 1400; // Width of window in passable variable
int frameHeight = 650; // Height of window in passable variable
Star [] starTest = new Star [100]; // Initialize star background
//----
ArrayList <Laser> lasers;

SpaceShip leftShip = new SpaceShip(0, 0, "left", frameWidth/6); 
SpaceShip rightShip = new SpaceShip(frameWidth/6 * 5, 0, "right", frameWidth/6 * 5);
//---- ^ Initialize ships screen position and to proper side using string arguement
public void setup() {
	frameRate(60);
	size(frameWidth,frameHeight);
	for(int i = 0; i < starTest.length; i++) { // initialize starTest to star class
		starTest[i] = new Star();
	}
	lasers = new ArrayList();
}

public void draw() {
	background(0);
	for(int i = 0; i < starTest.length; i++) { // Move star background
		starTest[i].displayStar();
		starTest[i].moveStar();
		starTest[i].resetStar();
	}
	leftShip.displayShip();
	rightShip.displayShip();
	checkForDelete();
	moveAll();
	displayAll();
}




//------------- Space Ship Class --------------------
class SpaceShip {
	float wid; // width of ship determined by parameter
	float shipX, shipY; // Ship x and y, determinded by perameter
	String side; // side the ship is on, used for laser guiding and other stuff
	SpaceShip(float xPos, float yPos, String sideIn, float w) {
		wid = w;
		shipX = xPos;
		shipY = yPos;
		side = sideIn; // screen side
	}
	public void displayShip() {
		noStroke();
		fill(150);
		rect(shipX,shipY, wid, height);
	}

}//
//-------------- Space Ship Class ---------------------

//--------- laser class -----------------------------
class Laser {
	
	float x;
	float y;
	float speed;
	String side;
	boolean del = false;

	Laser(String sideIn, float laserX, float laserY) {
		x = laserX;
		y = laserY;
		speed = 10;
		side = sideIn;
	}

	public void display() {
		if(side == "left") {
			stroke(255, 0, 0);
		}
		else {
			stroke(0, 255, 0);
		}
		point(x, y);
	}

	public void move() {
		if(side == "left") {
			if(x < frameWidth/6 *5) {
				x += speed;
			}
			else {
				del = true;
			}
		}
		else {
			if(x > frameWidth/6) {
				x -= speed;
			}
			else {
				del = true;	
			}
		}
	}

}//
//--------- laser class -----------------------------

//--------- laser stuff ---------------------------------
public void keyPressed() {
	while(key == 'a' || key == 'A') {
		Laser laser = new Laser("left", random(0, frameWidth/6), random(0, frameHeight));
		lasers.add(laser);
	}
	while(key == 'l' || key == 'L') {
		Laser laser = new Laser("right", random(frameWidth/6* 5, frameWidth/6), random(0, frameHeight));
		lasers.add(laser);
	}
}

public void moveAll() {
	//println(lasers.size());
	for(Laser laser : lasers) {
		laser.move();
	}
}

public void checkForDelete() {
	for(int i = 0; i < lasers.size(); i++) {
		Laser thisLaser = lasers.get(i);
		if(thisLaser.del) {
			lasers.remove(i);
			break;
		}
	}
}

public void displayAll() {
	for(Laser laser : lasers) {
		laser.display();
	}
}
//--------- laser stuff ---------------------------------

//---------------- Star BG Class ------------------------
class Star {
	
	float starX, starY, starSpeed, starSize;

	Star() { // random star positions
		starX = random(0,1400);
		starY = random(0,650);
		starSize = random(2,5);
		starSpeed = random(.15f,.25f);
	}

	public void displayStar() {
		strokeWeight(starSize);
		stroke(255);
		point(starX, starY);
	}
	
	public void moveStar() { //move stars
		starX -=  starSpeed;
	}

	public void resetStar() { // reset star at new y when it hits edge of screen
		if(starX < 0) {
			starX = width + starSize;
			starY = random(0, 650);
		}
	}
}//
//-----------------Star BG Class -------------------------
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "spaceBattle" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
