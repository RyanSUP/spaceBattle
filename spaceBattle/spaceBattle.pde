int frameWidth = 1400; // Width of window in passable variable
int frameHeight = 650; // Height of window in passable variable
Star [] starTest = new Star [100]; // Initialize star background
//----
SpaceShip leftShip = new SpaceShip(frameWidth/6, frameHeight/2, "left"); 
SpaceShip rightShip = new SpaceShip(frameWidth/6 * 5, frameHeight/2, "right");
//---- ^ Initialize ships screen position and to proper side using string arguement
void setup() {
	size(frameWidth,frameHeight);
	for(int i = 0; i < starTest.length; i++) { // initialize starTest to star class
		starTest[i] = new Star();
	}
}

void draw() {
	background(0);
	for(int i = 0; i < starTest.length; i++) { // Move star background
		starTest[i].displayStar();
		starTest[i].moveStar();
		starTest[i].resetStar();
	}
	leftShip.displayShip();
	leftShip.spawnLaser();
	leftShip.shootLaser();
	rightShip.displayShip();

}




//------------- Space Ship Class --------------------
class SpaceShip {
	
	float shipX, shipY; // Ship x and y, determinded by perameter
	int w, h; // Width and height of the ship
	int counterDown, counteruP; // counters for ship bobing function
	String side; // side the ship is on, used for laser guiding and other stuff
	Laser [] laserShot = new Laser[3];
	boolean test = false;
	SpaceShip(float xPos, float yPos, String sideIn) {
		shipX = xPos;
		shipY = yPos;
		w = 50;
		h = 50;
		side = sideIn; // screen side
	}
	void displayShip() {
		noStroke();
		fill(255, 0, 0);
		ellipse(shipX,shipY, w, h);
	}
	void spawnLaser() {
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

	void bobShip() { // move ship up and down to look cool, needs work. **both ships move the same atm.
		if(counterDown < 20) {
			shipY += .15;
			counterDown++;
		}
		else {
			if(counteruP < 20) {
				shipY -= .15;
				counteruP++;
			}
			else {
				counterDown = 0;
				counteruP = 0;
			}
		}
	}

}//
//-------------- Space Ship Class ---------------------

//-------------- Laser Class --------------------------
class Laser {
	
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

	/*
	void hitShip(float hitMark) { //input ships 
		if(laserX) {

		}
	}*/



}//
//-------------- Laser Class --------------------------

//---------------- Star BG Class ------------------------
class Star {
	
	float starX, starY, starSpeed, starSize;

	Star() { // random star positions
		starX = random(0,1400);
		starY = random(0,650);
		starSize = random(2,5);
		starSpeed = random(.15,.25);
	}

	void displayStar() {
		strokeWeight(starSize);
		stroke(255);
		point(starX, starY);
	}
	void moveStar() { //move stars
		starX -=  starSpeed;
	}

	void resetStar() { // reset star at new y when it hits edge of screen
		if(starX < 0) {
			starX = width + starSize;
			starY = random(0, 650);
		}
	}
}//
//-----------------Star BG Class -------------------------