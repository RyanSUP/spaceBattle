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
	float life;
	float wid; // width of ship determined by parameter
	float shipX, shipY; // Ship x and y, determinded by perameter
	float laserAdjustment, shieldAdjustment;
	String side; // side the ship is on, used for laser guiding and other stuff

	SpaceShip(float xPos, float yPos, String sideIn, float w) {
		life = 500;
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

	void checkForLasers() {
		if(side == "left") {
			for(Laser laser: lasers) {
				if(laser.x >= rightShield.x - rightShield.w/2 && laser.hit == false) {
					laser.hit = true;
					println(
					"Left Laser Hit " +
					"Laser Dmg : " + laser.laserStr +
					" // Shield Power : " + rightShield.shieldStr + " // " +  
					getDmg(laser.laserStr, rightShield.shieldStr)
					+ " // Life = " + rightShip.life
					);
					rightShip.life -= getDmg(laser.laserStr, rightShield.shieldStr);
					rightShip.life = constrain(rightShip.life, 0, 500);
				}
			}
		}
		else {
			for(Laser rLaser : rightLasers) {
				if(rLaser.x <= leftShield.x + leftShield.w/2 && rLaser.hit == false) {
					rLaser.hit = true;
					println(
					"Right Laser Hit // " +
					"Laser Dmg : " + rLaser.laserStr +
					" // Shield Power : " + leftShield.shieldStr + " // " +  
					getDmg(rLaser.laserStr, leftShield.shieldStr)
					+ " // Life = " + leftShip.life
					);
					leftShip.life -= getDmg(rLaser.laserStr, leftShield.shieldStr);	
					leftShip.life = constrain(leftShip.life, 0, 500);
				}
			}	
		}
	}

	void healthBar() {
		fill(0,255, 0);
		if(side == "left") {
			rect(shipX  + wid + 100, shipY, life/2, 10);
		}
		else {
			rect(shipX - wid + 120, shipY, life/2 *-1, 10);
		}
	}
}