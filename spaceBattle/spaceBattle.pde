int frameWidth = 1400; // Width of window in passable variable
int frameHeight = 650; // Height of window in passable variable
//----
boolean aPressed = false; // temp fire
boolean ePressed = false; // raise power
boolean qPressed = false; // lower power
//----^ left controls ^----
boolean lPressed = false;
boolean iPressed = false;
boolean pPressed = false;
//----^ right controls ^----
Star [] starBg = new Star [100]; // Initialize star background
//----
ArrayList <Laser> lasers;
//----
SpaceShip leftShip = new SpaceShip(0, 0, "left", frameWidth/6); 
SpaceShip rightShip = new SpaceShip(frameWidth/6 * 5, 0, "right", frameWidth/6 * 5);
//---- ^ Initialize ships screen position and to proper side using string arguement
//---- "left" = left side of screen, any other string is right side of screen
void setup() {
	frameRate(60);
	size(frameWidth,frameHeight);
	for(int i = 0; i < starBg.length; i++) { // initialize starBg to star class
		starBg[i] = new Star();
	}
	lasers = new ArrayList();
}

void draw() {
	background(0);
	for(int i = 0; i < starBg.length; i++) { // Move star background
		starBg[i].displayStar();
		starBg[i].moveStar();
		starBg[i].resetStar();
	}
	rightShip.displayShip();
	leftShip.displayShip();
	checkForDelete();
	moveAll();
	displayAll();

	if(ePressed) leftShip.raiseLaserPower();
	if(qPressed) leftShip.lowerLaserPower();
	if(iPressed) rightShip.raiseLaserPower();
	if(pPressed) rightShip.lowerLaserPower();

	if(aPressed) fireLeft();
	if(lPressed) fireRight();
}

//------------- Space Ship Class --------------------
class SpaceShip {
	float wid; // width of ship determined by parameter
	float shipX, shipY; // Ship x and y, determinded by perameter
	float powerAdjustment;
	String side; // side the ship is on, used for laser guiding and other stuff
	SpaceShip(float xPos, float yPos, String sideIn, float w) {
		wid = w;
		shipX = xPos;
		shipY = yPos;
		powerAdjustment = 0; // how much to adjust power (stroke) by
		side = sideIn; // screen side
	}
	void displayShip() {
		noStroke();
		fill(150);
		rect(shipX,shipY, wid, height);
	}

	void raiseLaserPower() { // raise the power (stroke) of laser
		powerAdjustment += .25;
		powerAdjustment = constrain(powerAdjustment, 0, 5);
		println(powerAdjustment);
	}

	void lowerLaserPower() { // lower the power (stroke) of laser
		powerAdjustment -= .25;
		powerAdjustment = constrain(powerAdjustment, 0, 5);
		println(powerAdjustment);
	}

}//
//-------------- Space Ship Class ---------------------

//--------- laser class -----------------------------
class Laser {
	
	float x;
	float y;
	float speed;
	float power; // size of laser
	float powerAd; // add thenumber from raiseLaserPower() and lowerLaserPower() to the power of the laser
	String side;
	boolean del = false; // boolean for deleting lasers from the array list

	Laser(String sideIn, float laserX, float laserY, float adjPower) { // pass through the position of the laser and its power
		x = laserX;
		y = laserY;
		speed = 10; // how fast the laser goes
		power = 3; // defualt power
		powerAd = adjPower;
		side = sideIn; // side the laser is on
	}

	void display() { // display laser, changes for each side
		if(side == "left") {
			strokeWeight(power + powerAd);
			stroke(255, 0, 0);
			line(x, y, x+5, y);
		}
		else {
			strokeWeight(power + powerAd);
			stroke(0, 255, 0);
			line(x, y, x-5, y);
		}
	}

	void move() { // move the laser
		if(side == "left") {
			if(x < frameWidth/6 *5) { // if it isnt at the other base yet, 
				x += speed; // move the laser
			}
			else {
				del = true;  // if it hits the other ship set delete boolean to true
			}
		}
		else {  // same as ^ but for opposite side
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

//----------- control stuff --------------------------
void keyPressed() { // set repective keys boolean to true if the key is down
	if(key == 'a' || key == 'A') {
		aPressed = true;
	}
	if(key == 'l' || key == 'L') {
		lPressed = true;
	}
	if(key == 'e' || key == 'E') {
		ePressed = true;
	}
	if(key == 'q' || key == 'Q') {
		qPressed = true;
	}
	if(key == 'i' || key == 'I') {
		iPressed = true;
	}
	if(key == 'p' || key == 'P') {
		pPressed = true;
	}

}

void keyReleased() { // if the key is released turn it to false
	if(key == 'e' || key == 'E') {
		ePressed = false;
	}
	if(key == 'a' || key == 'A') {
		aPressed = false;
	}
	if(key == 'l' || key == 'L') {
		lPressed = false;
	}
	if(key == 'q' || key == 'Q') {
		qPressed = false;
	}
	if(key == 'i' || key == 'I') {
		iPressed = false;
	}
	if(key == 'p' || key == 'P') {
		pPressed = false;
	}
}
//----------- control stuff --------------------------

//----------- stuff effected by controls ------------
void fireLeft() {  // create a laser with these properties if the key is pressed
	Laser laser = new Laser("left", random(0, frameWidth/6), random(0, frameHeight), leftShip.powerAdjustment); 
	lasers.add(laser); // add laser to the laser array list
}

void fireRight() {  // create a laser with these properties if the key is pressed
	Laser laser = new Laser("right", random(frameWidth/6* 5, frameWidth), random(0, frameHeight), rightShip.powerAdjustment);
	lasers.add(laser); // add laser to the laser array list
}
//----------- stuff effected by controls ------------

//--------- laser stuff ---------------------------------
void moveAll() {
	for(Laser laser : lasers) {  // for each laser in the array list, move them
		laser.move();
	}
}

void checkForDelete() {
	for(int i = 0; i < lasers.size(); i++) { // search through the array list
		Laser thisLaser = lasers.get(i); // creat a laser that is a dublicate of the lasers in the game
		if(thisLaser.del) { // if the laser duplicate has the delete property
			lasers.remove(i); // remove the original laser from the game
			break; // stop the code from unneccisary checking
		}
	}
}

void displayAll() {
	for(Laser laser : lasers) { // for each laser in the array list, display them
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