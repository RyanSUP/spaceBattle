/*
 ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄ 
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
▐░█▀▀▀▀▀▀▀▀▀  ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌
▐░▌               ▐░▌     ▐░▌       ▐░▌▐░▌       ▐░▌
▐░█▄▄▄▄▄▄▄▄▄      ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌
▐░░░░░░░░░░░▌     ▐░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
 ▀▀▀▀▀▀▀▀▀█░▌     ▐░▌     ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀█░█▀▀ 
          ▐░▌     ▐░▌     ▐░▌       ▐░▌▐░▌     ▐░▌  
 ▄▄▄▄▄▄▄▄▄█░▌     ▐░▌     ▐░▌       ▐░▌▐░▌      ▐░▌ 
▐░░░░░░░░░░░▌     ▐░▌     ▐░▌       ▐░▌▐░▌       ▐░▌
 ▀▀▀▀▀▀▀▀▀▀▀       ▀       ▀         ▀  ▀         ▀ 
                                                    
 ▄▄▄▄▄▄▄▄▄▄   ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄ 
▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ 
▐░▌       ▐░▌▐░▌       ▐░▌▐░▌          ▐░▌          
▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ 
▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ 
▐░▌       ▐░▌▐░▌       ▐░▌          ▐░▌▐░▌          
▐░█▄▄▄▄▄▄▄█░▌▐░▌       ▐░▌ ▄▄▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ 
▐░░░░░░░░░░▌ ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
 ▀▀▀▀▀▀▀▀▀▀   ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀ */

class SpaceShip {
	float wid; // width of ship determined by parameter
	float shipX, shipY; // Ship x and y, determinded by perameter
	float laserAdjustment, shieldAdjustment;
	String side; // side the ship is on, used for laser guiding and other stuff

	SpaceShip(float xPos, float yPos, String sideIn, float w) {
		wid = w;
		shipX = xPos;
		shipY = yPos;
		laserAdjustment = 0; // how much to adjust power (stroke) by
		shieldAdjustment = 0;
		side = sideIn; // screen side
	}
	void displayShip() {
		noStroke();
		fill(150);
		rectMode(CORNER);
		rect(shipX,shipY, wid, height);
	}

	void raiseLaserPower() { // raise the power (stroke) of laser
		laserAdjustment += .25;
		laserAdjustment = constrain(laserAdjustment, 0, 5);
	}

	void lowerLaserPower() { // lower the power (stroke) of laser
		laserAdjustment -= .25;
		laserAdjustment = constrain(laserAdjustment, 0, 5);
	}


	void raiseShieldPower() { // raise the power (stroke) of laser
		shieldAdjustment += .25;
		shieldAdjustment = constrain(shieldAdjustment, 0, 5);
	}

	void lowerShieldPower() { // lower the power (stroke) of laser
		shieldAdjustment -= .25;
		shieldAdjustment = constrain(shieldAdjustment, 0, 5);
	}
}