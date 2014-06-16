/*
 ▄▄▄▄▄▄▄▄▄▄▄  ▄         ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄            ▄▄▄▄▄▄▄▄▄▄  
▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌          ▐░░░░░░░░░░▌ 
▐░█▀▀▀▀▀▀▀▀▀ ▐░▌       ▐░▌ ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░▌          ▐░█▀▀▀▀▀▀▀█░▌
▐░▌          ▐░▌       ▐░▌     ▐░▌     ▐░▌          ▐░▌          ▐░▌       ▐░▌
▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌     ▐░▌     ▐░█▄▄▄▄▄▄▄▄▄ ▐░▌          ▐░▌       ▐░▌
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌     ▐░▌     ▐░░░░░░░░░░░▌▐░▌          ▐░▌       ▐░▌
 ▀▀▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌     ▐░▌     ▐░█▀▀▀▀▀▀▀▀▀ ▐░▌          ▐░▌       ▐░▌
          ▐░▌▐░▌       ▐░▌     ▐░▌     ▐░▌          ▐░▌          ▐░▌       ▐░▌
 ▄▄▄▄▄▄▄▄▄█░▌▐░▌       ▐░▌ ▄▄▄▄█░█▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌
▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░▌ 
 ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀  */
                                                                              
class Shield {
	
	String side;
	float x, y, w, h, shieldPower, shieldStr;
	
	Shield(String sideIn, float shieldX, float shieldY) {
		side = sideIn;
		x = shieldX;
		y = shieldY;
		w = 100;
		h = 700; 
		shieldPower = 3;
	}

	void display() {
		noStroke();
		if(side == "left") {
			fill(0, 100, 200, shieldPower + leftShip.shieldAdjustment*70);
		}
		else {
			fill(0, 100, 200, shieldPower + rightShip.shieldAdjustment*70);
		}
		rectMode(CENTER);
		rect(x, y, w, h);
	}

	void updatePower() {
		if(side == "left") {
			shieldStr = shieldPower + leftShip.shieldAdjustment;
		}
		else {
			shieldStr = shieldPower + rightShip.shieldAdjustment;
		}
	}

	void checkForLasers() {
		if(side == "left") {
			for(Laser laser: lasers) {
				if(laser.x >= rightShield.x - rightShield.w/2 && laser.hit == false) {
					laser.hit = true;
					println(
					"Left Laser Hit " +
					"Laser Dmg : " + laser.laserStr +
					" // " + "Shield Power : " + shieldStr + " // " +  
					getDmgTest(laser.laserStr, shieldStr)
					);
				}
			}
		}
		else {
			for(Laser rLaser : rightLasers) {
				if(rLaser.x <= leftShield.x + leftShield.w/2 && rLaser.hit == false) {
					rLaser.hit = true;
					println(
					"Right Laser Hit " +
					"Laser Dmg : " + rLaser.laserStr +
					" // " + "Shield Power : " + shieldStr + " // " +  
					getDmgTest(rLaser.laserStr, shieldStr)
					);
				}
			}	
		}
	}
}//

