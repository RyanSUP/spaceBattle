/*
 ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄              
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌             
▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀              
▐░▌          ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌          ▐░▌                       
▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░▌          ▐░█▄▄▄▄▄▄▄▄▄              
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌          ▐░░░░░░░░░░░▌             
 ▀▀▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░▌          ▐░█▀▀▀▀▀▀▀▀▀              
          ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌          ▐░▌                       
 ▄▄▄▄▄▄▄▄▄█░▌▐░▌          ▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄              
▐░░░░░░░░░░░▌▐░▌          ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌             
 ▀▀▀▀▀▀▀▀▀▀▀  ▀            ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀              
                                                                              
 ▄▄▄▄▄▄▄▄▄▄   ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄            ▄▄▄▄▄▄▄▄▄▄▄ 
▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌          ▐░░░░░░░░░░░▌
▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀█░█▀▀▀▀  ▀▀▀▀█░█▀▀▀▀ ▐░▌          ▐░█▀▀▀▀▀▀▀▀▀ 
▐░▌       ▐░▌▐░▌       ▐░▌     ▐░▌          ▐░▌     ▐░▌          ▐░▌          
▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌     ▐░▌          ▐░▌     ▐░▌          ▐░█▄▄▄▄▄▄▄▄▄ 
▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌     ▐░▌          ▐░▌     ▐░▌          ▐░░░░░░░░░░░▌
▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌     ▐░▌          ▐░▌     ▐░▌          ▐░█▀▀▀▀▀▀▀▀▀ 
▐░▌       ▐░▌▐░▌       ▐░▌     ▐░▌          ▐░▌     ▐░▌          ▐░▌          
▐░█▄▄▄▄▄▄▄█░▌▐░▌       ▐░▌     ▐░▌          ▐░▌     ▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ 
▐░░░░░░░░░░▌ ▐░▌       ▐░▌     ▐░▌          ▐░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
 ▀▀▀▀▀▀▀▀▀▀   ▀         ▀       ▀            ▀       ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  */
                                                                              
final int frameWidth = 1400; // Width of window in passable variable
final int frameHeight = 650; // Height of window in passable variable
int leftLaserCap = 10;
int rightLaserCap = 10;
//---- ALL CONTROLS ARE TEMP
boolean aPressed = true; // fire
boolean ePressed = false; // raise power
boolean qPressed = false; // lower power
boolean fPressed = false; // raise shield
boolean sPressed = false; // lower shield
//----^ left controls ^----
boolean lPressed = true; // fire
boolean iPressed = false; // raise power
boolean pPressed = false; // lower power
boolean hPressed = false; // raise shield
boolean kayPressed = false; // lower shield
//----^ right controls ^----
Star [] starBg = new Star [100]; // Initialize star background
//----
ArrayList <Laser> lasers;
ArrayList <Laser> rightLasers;
//----
Shield leftShield = new Shield("left", frameWidth/6, frameHeight/2);
Shield rightShield = new Shield("right", frameWidth/6 * 5, frameHeight/2);
//----
SpaceShip leftShip = new SpaceShip(0, 0, "left", frameWidth/6); 
SpaceShip rightShip = new SpaceShip(frameWidth/6 * 5, 0, "right", frameWidth/6);
//---- ^ Initialize ships screen position and to proper side using string arguement
//---- "left" = left side of screen, any other string is right side of screen
void setup() {
	frameRate(60);
	size(frameWidth,frameHeight);
	
	for(int i = 0; i < starBg.length; i++) { // initialize starBg to star class
		starBg[i] = new Star();
	}
	rightLasers = new ArrayList();
	lasers = new ArrayList();
}

void draw() {
	background(0);
	
	for(int i = 0; i < starBg.length; i++) { // Move star background
		starBg[i].displayStar();
		starBg[i].moveStar();
		starBg[i].resetStar();
	}

	rightShield.updatePower();
	rightShield.display();
	rightShip.displayShip();
	rightShip.healthBar();
	rightShip.checkForLasers();
	
	leftShield.updatePower();
	leftShield.display();
	leftShip.displayShip();
	leftShip.healthBar();
	leftShip.checkForLasers();

	
	checkForDelete();
	moveAll();
	displayAll();

	if(ePressed) leftShip.raiseLaserPower();
	if(qPressed) leftShip.lowerLaserPower();
	if(iPressed) rightShip.raiseLaserPower();
	if(pPressed) rightShip.lowerLaserPower();
	if(sPressed) leftShip.lowerShieldPower();
	if(fPressed) leftShip.raiseShieldPower();
	if(kayPressed) rightShip.lowerShieldPower();
	if(hPressed) rightShip.raiseShieldPower();

	if(aPressed && leftShip.life != 0) fireLeft();
	if(lPressed && rightShip.life != 0) fireRight();
}
/*
██╗      █████╗ ███████╗███████╗██████╗     
██║     ██╔══██╗██╔════╝██╔════╝██╔══██╗    
██║     ███████║███████╗█████╗  ██████╔╝    
██║     ██╔══██║╚════██║██╔══╝  ██╔══██╗    
███████╗██║  ██║███████║███████╗██║  ██║    
╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝    
                                            
███████╗████████╗██╗   ██╗███████╗███████╗  
██╔════╝╚══██╔══╝██║   ██║██╔════╝██╔════╝  
███████╗   ██║   ██║   ██║█████╗  █████╗    
╚════██║   ██║   ██║   ██║██╔══╝  ██╔══╝    
███████║   ██║   ╚██████╔╝██║     ██║       
╚══════╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝       
  */                                          

//--------- laser stuff ---------------------------------
void moveAll() {
	for(Laser laser : lasers) {  // for each laser in the array list, move them
		laser.move();
	}

	for(Laser rLaser : rightLasers) {  // for each laser in the array list, move them
		rLaser.move();
	}
}

void checkForDelete() {
	for(int i = 0; i < lasers.size(); i++) { // search through the array list
		Laser thisLaser = lasers.get(i); // creat a laser that is a dublicate of the lasers in the game
		if(thisLaser.del) { // if the laser duplicate has the delete property
			lasers.remove(i); // remove the original laser from the game
			checkForDelete(); // call function again to delete more lasers
		}
	}


	for(int i = 0; i < rightLasers.size(); i++) { // search through the array list
		Laser thisLaser = rightLasers.get(i); // creat a laser that is a dublicate of the lasers in the game
		if(thisLaser.del) { // if the laser duplicate has the delete property
			rightLasers.remove(i); // remove the original laser from the game
			checkForDelete(); // call function again to delete more lasers
		}
	}
}

void displayAll() {
	for(Laser laser : lasers) { // for each laser in the array list, display them
		laser.display();
	}

	for(Laser rLaser : rightLasers) { // for each laser in the array list, display them
		rLaser.display();
	}
}

void fireLeft() {  // create a laser with these properties if the key is pressed
	if(lasers.size() < leftLaserCap) {
		Laser laser = new Laser("left", random(0, frameWidth/6), random(100, frameHeight - 100), leftShip.laserAdjustment); 
		lasers.add(laser); // add laser to the laser array list
	}
}

void fireRight() {  // create a laser with these properties if the key is pressed
	if(rightLasers.size() < rightLaserCap) {
		Laser rLaser = new Laser("right", random(frameWidth/6* 5, frameWidth), random(100, frameHeight - 100), rightShip.laserAdjustment);
		rightLasers.add(rLaser); // add laser to the laser array list
	}
}
//--------- laser stuff ---------------------------------
/*
 ██████╗ ██████╗ ███╗   ██╗████████╗██████╗  ██████╗ ██╗         
██╔════╝██╔═══██╗████╗  ██║╚══██╔══╝██╔══██╗██╔═══██╗██║         
██║     ██║   ██║██╔██╗ ██║   ██║   ██████╔╝██║   ██║██║         
██║     ██║   ██║██║╚██╗██║   ██║   ██╔══██╗██║   ██║██║         
╚██████╗╚██████╔╝██║ ╚████║   ██║   ██║  ██║╚██████╔╝███████╗    
 ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚══════╝    
                                                                 
███████╗████████╗██╗   ██╗███████╗███████╗                       
██╔════╝╚══██╔══╝██║   ██║██╔════╝██╔════╝                       
███████╗   ██║   ██║   ██║█████╗  █████╗                         
╚════██║   ██║   ██║   ██║██╔══╝  ██╔══╝                         
███████║   ██║   ╚██████╔╝██║     ██║                            
╚══════╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝                            
                                                                 */
//----------- control stuff --------------------------
void keyPressed() { // set repective keys boolean to true if the key is down
	/*if(key == 'a' || key == 'A') {
		aPressed = true;
	}
	if(key == 'l' || key == 'L') {
		lPressed = true;
	} */
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
	if(key == 'k' || key == 'K') {
		kayPressed = true;
	}
	if(key == 'h' || key == 'H') {
		hPressed = true;
	}
	if(key == 's' || key == 'S') {
		sPressed = true;
	}
	if(key == 'f' || key == 'F') {
		fPressed = true;
	}
}

void keyReleased() { // if the key is released turn it to false
	if(key == 'e' || key == 'E') {
		ePressed = false;
	}/*
	if(key == 'a' || key == 'A') {
		aPressed = false;
	}
	if(key == 'l' || key == 'L') {
		lPressed = false;
	} */
	if(key == 'q' || key == 'Q') {
		qPressed = false;
	}
	if(key == 'i' || key == 'I') {
		iPressed = false;
	}
	if(key == 'p' || key == 'P') {
		pPressed = false;
	}
	if(key == 'k' || key == 'K') {
		kayPressed = false;
	}
	if(key == 'h' || key == 'H') {
		hPressed = false;
	}
	if(key == 's' || key == 'S') {
		sPressed = false;
	}
	if(key == 'f' || key == 'F') {
		fPressed = false;
	}
}
//----------- control stuff --------------------------
/*
██████╗ ███╗   ███╗ ██████╗      ██████╗ █████╗ ██╗      ██████╗
██╔══██╗████╗ ████║██╔════╝     ██╔════╝██╔══██╗██║     ██╔════╝
██║  ██║██╔████╔██║██║  ███╗    ██║     ███████║██║     ██║     
██║  ██║██║╚██╔╝██║██║   ██║    ██║     ██╔══██║██║     ██║     
██████╔╝██║ ╚═╝ ██║╚██████╔╝    ╚██████╗██║  ██║███████╗╚██████╗
╚═════╝ ╚═╝     ╚═╝ ╚═════╝      ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝

The values of shield and laser are between 3 and 8.  
If a small valued laser hits a large valued shield, the damage should be a large number.
If a large valued laser hits a small valued shield, the damage shouild be a large number.
Basically, the greater distance between numbers, the more damage.
*/

float getDmg(float laserStr, float shieldStr) {
	
	float totalDmg = 0;
	float attack = laserStr;
	float defense = shieldStr;
	
	totalDmg = abs(defense - attack);
	return totalDmg;
}