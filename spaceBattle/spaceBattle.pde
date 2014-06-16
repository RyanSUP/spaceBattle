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
//----
boolean gameStart = false;
Menu startMenu = new Menu(frameWidth/2, frameHeight/2);
//---- ALL CONTROLS ARE TEMP
boolean leftFire = true; // fire
boolean wPressed = false; // raise power
boolean sPressed = false; // lower power
boolean dPressed = false; // raise shield
boolean aPressed = false; // lower shield
//----^ left controls ^----
boolean rightFire = true; // fire
boolean upPressed = false; // raise power
boolean downPressed = false; // lower power
boolean rightPressed = false; // raise shield
boolean leftPressed = false; // lower shield
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
	if(gameStart == false) {
		startMenu.title();
		startMenu.playButton();
		startMenu.play();
		startMenu.hTPButton();
		startMenu.howToPlay();
	}
	else {
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

		if(wPressed) leftShip.raiseLaserPower();
		if(sPressed) leftShip.lowerLaserPower();
		if(upPressed) rightShip.raiseLaserPower();
		if(downPressed) rightShip.lowerLaserPower();
		if(aPressed) leftShip.lowerShieldPower();
		if(dPressed) leftShip.raiseShieldPower();
		if(leftPressed) rightShip.lowerShieldPower();
		if(rightPressed) rightShip.raiseShieldPower();

		if(leftFire && leftShip.life != 0) fireLeft();
		if(rightFire && rightShip.life != 0) fireRight();
	}
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
	if(key == 'w' || key == 'W') {
		wPressed = true;
	}
	if(key == 'a' || key == 'A') {
		aPressed = true;
	}
	if(key == 's' || key == 'S') {
		sPressed = true;
	}
	if(key == 'd' || key == 'D') {
		dPressed = true;
	}
	if(key == CODED) {
		if(keyCode == UP) {
			upPressed = true;
		}
		if(keyCode == DOWN) {
			downPressed = true;
		}
		if(keyCode == LEFT) {
			leftPressed = true;
		}
		if(keyCode == RIGHT) {
			rightPressed = true;
		}
	}
}

void keyReleased() { // if the key is released turn it to false
	if(key == 'w' || key == 'W') {
		wPressed = false;
	}
	if(key == 'a' || key == 'A') {
		aPressed = false;
	}
	if(key == 's' || key == 'S') {
		sPressed = false;
	}
	if(key == 'd' || key == 'D') {
		dPressed = false;
	}
	if(key == CODED) {
		if(keyCode == UP) {
			upPressed = false;
		}
		if(keyCode == DOWN) {
			downPressed = false;
		}
		if(keyCode == LEFT) {
			leftPressed = false;
		}
		if(keyCode == RIGHT) {
			rightPressed = false;
		}
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

/*
███╗   ███╗███████╗███╗   ██╗██╗   ██╗
████╗ ████║██╔════╝████╗  ██║██║   ██║
██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║
██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║
██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝
╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝ 
*/

class Menu {
	float x, y, w, h, hY;
	Menu(int inX, int inY) {
		x = inX;
		y = inY;
		w = 200;
		h = 75;
		hY = inY + h + 10;
	}
	void title() {
		textSize(150);
		fill(0,100, 200);
		textAlign(CENTER);
		text("BATTLE STATIONS", x, y - 150);
	}

	void playButton() {
		rectMode(CENTER);
		strokeWeight(3);
		stroke(255, 100);
		fill(100,100);
		rect(x, y, w, h);

		textSize(40);
		fill(255);
		textAlign(CENTER);
		text("PLAY", x, y+15);
	}

	void play() {
		if(mousePressed && mouseX >= x - w/2 && mouseX <= x + w/2 && mouseY >= y - h/2 +10 && mouseY <= y + h/2) {
			gameStart  = true;
			println("play");
		}
	}
	
	void hTPButton() {
		rectMode(CENTER);
		strokeWeight(3);
		stroke(255, 100);
		fill(100,100);
		rect(x, y + h + 20, w, h);

		textSize(30);
		fill(255);
		textAlign(CENTER);
		text("How To Play", x, hY + 20);
	}

	void howToPlay() {
		if(mousePressed && mouseX >= x - w/2 && mouseX <= x + w/2 && mouseY >= hY - h/2 && mouseY <= hY + h/2) {
			println("how to play");
		}
	} 
}