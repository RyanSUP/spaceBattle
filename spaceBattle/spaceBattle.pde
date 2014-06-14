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
                                                                              
int frameWidth = 1400; // Width of window in passable variable
int frameHeight = 650; // Height of window in passable variable
//---- ALL CONTROLS ARE TEMP
boolean aPressed = false; // fire
boolean ePressed = false; // raise power
boolean qPressed = false; // lower power
boolean fPressed = false; // raise shield
boolean sPressed = false; // lower shield
//----^ left controls ^----
boolean lPressed = false; // fire
boolean iPressed = false; // raise power
boolean pPressed = false; // lower power
boolean hPressed = false; // raise shield
boolean kayPressed = false; // lower shield
//----^ right controls ^----
Star [] starBg = new Star [100]; // Initialize star background
//----
ArrayList <Laser> lasers;
//----
Shield leftShield = new Shield("left", frameWidth/6, frameHeight/2);
Shield rightShield = new Shield("right", frameWidth/6 * 5, frameHeight/2);
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
	rightShield.display();
	rightShip.displayShip();
	leftShield.display();
	leftShip.displayShip();
	checkForDelete();
	moveAll();
	displayAll();

	if(ePressed) leftShip.raiseLaserPower();
	if(qPressed) leftShip.lowerLaserPower();
	if(iPressed) rightShip.raiseLaserPower();
	if(pPressed) rightShip.lowerLaserPower();
	if(sPressed) leftShield.lowerShieldPower();
	if(fPressed) leftShield.raiseShieldPower();
	if(kayPressed) rightShield.lowerShieldPower();
	if(hPressed) rightShield.raiseShieldPower();
	if(aPressed) fireLeft();
	if(lPressed) fireRight();
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
}

void checkForDelete() {
	for(int i = 0; i < lasers.size(); i++) { // search through the array list
		Laser thisLaser = lasers.get(i); // creat a laser that is a dublicate of the lasers in the game
		if(thisLaser.del) { // if the laser duplicate has the delete property
			lasers.remove(i); // remove the original laser from the game
			checkForDelete(); // call this function again to delete some more
		}
	}
}

void displayAll() {
	for(Laser laser : lasers) { // for each laser in the array list, display them
		laser.display();
	}
}

void fireLeft() {  // create a laser with these properties if the key is pressed
	Laser laser = new Laser("left", random(0, frameWidth/6), random(0, frameHeight), leftShip.powerAdjustment); 
	lasers.add(laser); // add laser to the laser array list
}

void fireRight() {  // create a laser with these properties if the key is pressed
	Laser laser = new Laser("right", random(frameWidth/6* 5, frameWidth), random(0, frameHeight), rightShip.powerAdjustment);
	lasers.add(laser); // add laser to the laser array list
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
