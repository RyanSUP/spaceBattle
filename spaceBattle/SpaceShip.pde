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
	float hullDmg; // damage the ship takes
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
				if(laser.x >= rightShield.x - rightShield.w/2 && laser.hit == false) { //if the laser hits the shield
					laser.hit = true; // set this to true, stops multiple hits from the same laser
					println(
					"Left Laser Hit // " +
					"Laser Dmg : " + laser.laserStr +
					" // Shield Power : " + rightShield.shieldStr + " // " +  
					getDmg(laser.laserStr, rightShield.shieldStr) 
					+ " // Life = " + rightShip.life
					);
					hullDmg = getDmg(laser.laserStr, rightShield.shieldStr);
					if(hullDmg == 0) {
						laser.del = true;
					}
					rightShip.life -= hullDmg; // use the getDMG function to determine ammount of damage taken and adjust life
					rightShip.life = constrain(rightShip.life, 0, 500); // stops bar from going negative
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
					hullDmg = getDmg(rLaser.laserStr, leftShield.shieldStr);
					if(hullDmg == 0) {
						rLaser.del = true;
					}
					leftShip.life -= hullDmg;	
					leftShip.life = constrain(leftShip.life, 0, 500);
				}
			}	
		}
	}

	void healthBar() {
		fill(0,255, 0);
		if(side == "left") {
			rect(shipX  + wid + 100, shipY, life/2, 10); // display the hp bar
		}
		else {
			rect(shipX - wid + 120, shipY, life/2 *-1, 10);
		}
	}
}