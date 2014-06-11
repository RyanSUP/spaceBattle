int frameWidth = 1400; // Width of window in passable variable
int frameHeight = 650; // Height of window in passable variable
Star [] starTest = new Star [100]; // Initialize star background
//----
ArrayList <Laser> lasers;

SpaceShip leftShip = new SpaceShip(0, 0, "left", frameWidth/6); 
SpaceShip rightShip = new SpaceShip(frameWidth/6 * 5, 0, "right", frameWidth/6 * 5);
//---- ^ Initialize ships screen position and to proper side using string arguement
void setup() {
	frameRate(60);
	size(frameWidth,frameHeight);
	for(int i = 0; i < starTest.length; i++) { // initialize starTest to star class
		starTest[i] = new Star();
	}
	lasers = new ArrayList();
}

void draw() {
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
	SpaceShip(float xPos, float yPos, String sideIn, float w) {
		wid = w;
		shipX = xPos;
		shipY = yPos;
		side = sideIn; // screen side
	}
	void displayShip() {
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
	
	Laser(String sideIn, float tempX, float tempY) {
		x = tempX;
		y = tempY;
		speed = 10;
		side = sideIn;
	}

	void displayLaser() {
		stroke(255, 0, 0);
		point(x, y);
	}

	void moveLaser() {
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
void keyPressed() {
	if(key == 'a' || key == 'A') {
		Laser temp = new Laser("left", random(0, frameWidth/6), random(0, frameHeight));
		lasers.add(temp);
	}
}
void offScreen() {

}
void moveAll() {
	for(Laser temp : lasers) {
		temp.moveLaser();
	}
}
void displayAll() {
	for(Laser temp : lasers) {
		temp.displayLaser();
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