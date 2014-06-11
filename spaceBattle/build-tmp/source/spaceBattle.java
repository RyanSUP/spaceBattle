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
ArrayList <LaserTest> lasers;

SpaceShip leftShip = new SpaceShip(0, 0, "left", frameWidth/6); 
SpaceShip rightShip = new SpaceShip(frameWidth/6 * 5, 0, "right", frameWidth/6 * 5);
//---- ^ Initialize ships screen position and to proper side using string arguement
public void setup() {
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
	moveAll();
	displayAll();
}




//------------- Space Ship Class --------------------
class SpaceShip {
	float wid; // width of ship determined by parameter
	float shipX, shipY; // Ship x and y, determinded by perameter
	String side; // side the ship is on, used for laser guiding and other stuff
	//Laser [] laserShot = new Laser[3];
	boolean test = false;
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
	/*void spawnLaser() {
		if(keyPressed) {
			test = true;
			for(int i = 0; i < laserShot.length; i++) {
				laserShot[i] = new Laser(side);
			}
		}
	}

	void shootLaser() {
 		if(test){
			for(int i = 0; i < laserShot.length; i++) {
				laserShot[i].displayLaser();
				laserShot[i].moveLaser();
			}
		}
	}
*/
}//
//-------------- Space Ship Class ---------------------

//-------------- Laser Class --------------------------
/*class Laser {
	
	float laserX, laserY, speed; //position of the laser and speed of laser
	String side; // side the laser is on
	Laser(String sideIn) { // passed in from parent ship
		side = sideIn;
		if(sideIn == "left") {
			laserX = leftShip.shipX;
		} // determines what side laser is on.
		else {
			laserX = rightShip.shipX;
		}
		laserY = 325; // half of window height ** to be adjusted when bobing is implemented
		speed = 10; // adjustable speed
	}
	void displayLaser() {
		stroke(255, 0, 0, 125);
		if(side == "left") {
			line(laserX - speed, laserY, laserX, laserY);
		} // determines which side the laser is shot at.
		else {
			line(laserX + speed, laserY, laserX, laserY);
		}
	}
	void moveLaser() { // testing laser firing mechanics
		stroke(255);
		if(side == "left") {
			laserX += speed;
		} // determines which side the laser is shot at.
		else {
			laserX -= speed;
		}
		print(laserX);
	}



}//
*/
//-------------- Laser Class --------------------------


//---------temp laser class -----------------------------
class LaserTest {
	
	float x;
	float y;
	float speed;
	String side;
	
	LaserTest(String sideIn, float tempX, float tempY) {
		x = tempX;
		y = tempY;
		float speed = 10;
		side = sideIn;
	}

	public void displayTestLaser() {
		stroke(255, 0, 0);
		point(x, y);
	}

	public void moveTempLaser() {
		if(side == "left") {
			x += speed;
		}
		else {
			x -= speed;
		}
	}

}//
//---------temp laser class -----------------------------
//--------- laser stuff ---------------------------------
public void keyPressed() {
	if(key == 'a' || key == 'A') {
		LaserTest temp = new LaserTest("left", random(0, frameWidth/6), random(0, frameHeight));
	}
	lasers.add(temp);
}

public void moveAll() {
	for(LaserTest temp : lasers) {
		temp.moveTempLaser();
	}
}
public void displayAll() {
	for(LaserTest temp : lasers) {
		temp.displayTestLaser();
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
