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
	float x, y, w, h, shieldPower, powerAdjustment, shieldStr;
	
	Shield(String sideIn, float shieldX, float shieldY) {
		side = sideIn;
		x = shieldX;
		y = shieldY;
		w = 100;
		h = 700; 
		shieldPower = 3; 
		powerAdjustment = 0;
	}

	void display() {
		noStroke();
		fill(0, 100, 200, shieldPower + powerAdjustment*70);
		rectMode(CENTER);
		rect(x, y, w, h);
	}
	
	void raiseShieldPower() { // raise the power (stroke) of laser
		powerAdjustment += .25;
		powerAdjustment = constrain(powerAdjustment, 0, 5);
		shieldStr = shieldPower + powerAdjustment;// strength of shield
	}

	void lowerShieldPower() { // lower the power (stroke) of laser
		powerAdjustment -= .25;
		powerAdjustment = constrain(powerAdjustment, 0, 5);
	    shieldStr = shieldPower + powerAdjustment;  // strength of shield
	
	}

	void checkForLasers() {
		for(Laser laser: lasers) {
			if(laser.side == side) {
				if(laser.x >= x + w) {
					println(
					getDmg(laser.laserStr, shieldStr)
					);
				}
			}
		}
	}
}//

float getDmg(float laserStr, float shieldStr) {
	float totalDmg = 0;
	float attack = laserStr;
	float defense = shieldStr;
	float blockValue;
	float attackValue;
	float mid = 5.50;
	/*
	The values of shield and laser are between 3 and 8.  
	If a small valued laser hits a large valued shield, the damage should be a large number.
	If a large valued laser hits a small valued shield, the damage shouild be a large number.
	Basically, the greater distance between numbers, the more damage.
	*/
	if(defense > mid) {
		blockValue = defense - mid;
		if(attack =< mid) {
			attackValue = mid - attack;
			totalDmg = blockValue + attackValue;
			//dOf 8: 8 - mid = 2.5
			//aOf 5: mid - 5 = .5  total dmg = 3
			//aOf 4: mid - 4 = 1.5  total dmg = 4;
			//aOf 3: mid - 3 = 2.5  total dmg = 5
			//total dmg = dOf + aOf
		}
		else {
			attackValue = attack - mid;
			totalDmg = blockValue - attackValue;
			//dOf 8: 8 - mid = 2.5
			//aOf 8:  8 - mid = 2.5 // total 0
			//aOf 7: 7 - mid = 1.5 // total 1
			//aOf 6: 6 - mid = .5   // total 2
			//total dmg = dOF - aOf
		}
	}
	if(defense <= mid) {
		blockValue = mid - defense;
		if(attack > mid) {
			attackValue = attack - mid;
			totalDmg = blockValue + attackValue;
			//dOf 3:  mid - 3 = 2.5
			//aOf 8:  8 - mid = 2.5 = 5
			//aOf 7: 7 - mid = 1.5  total =4
			//aOf 6: 6 - mid = .5 total = 3
		}
		else {
			attackValue = mid - attack;
			totalDmg = blockValue - attackValue;
			//dOf 3: mid - 3 = 2.5	
			//aOf 5: mid - 5 = .5 total = 2
			//aOf 4: mid - 4 = 1.5 total = 1
			//aOf 3: mid - 3 = 2.5 total = 0 
		}
	}
	return totalDmg;
}

