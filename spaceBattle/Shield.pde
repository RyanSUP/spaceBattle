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
}//

