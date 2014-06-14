/*
 ▄            ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄ 
▐░▌          ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
▐░▌          ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌
▐░▌          ▐░▌       ▐░▌▐░▌          ▐░▌          ▐░▌       ▐░▌
▐░▌          ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌
▐░▌          ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
▐░▌          ▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀█░█▀▀ 
▐░▌          ▐░▌       ▐░▌          ▐░▌▐░▌          ▐░▌     ▐░▌  
▐░█▄▄▄▄▄▄▄▄▄ ▐░▌       ▐░▌ ▄▄▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░▌      ▐░▌ 
▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌
 ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀ */
                                                                
class Laser {
	
	float x;
	float y;
	float speed;
	float power; // size of laser
	float powerAdd; // add thenumber from raiseLaserPower() and lowerLaserPower() to the power of the laser
	String side;
	float laserStr;
	boolean del = false; // boolean for deleting lasers from the array list

	Laser(String sideIn, float laserX, float laserY, float adjPower) { // pass through the position of the laser and its power (power function in spaceship class)
		x = laserX;
		y = laserY;
		speed = 10; // how fast the laser goes
		power = 3; // defualt power
		powerAdd = adjPower;
		side = sideIn; // side the laser is on
		laserStr = power + powerAdd;
	}

	void display() { // display laser, changes for each side
		if(side == "left") {
			strokeWeight(power + powerAdd);
			stroke(255, 0, 0, 150);
			line(x, y, x+5, y);
		}
		else {
			strokeWeight(power + powerAdd);
			stroke(0, 255, 0, 150);
			line(x, y, x-5, y);
		}
		//println(laserStr);
	}

	void move() { // move the laser
		if(side == "left") {
			if(x < frameWidth/6 *5) { // if it isnt at the other base yet, 
				x += speed; // move the laser
				if(x > frameWidth/6 * 5) {
					x = frameWidth/6 * 5;
				}
			}
			else {
				del = true;  // if it hits the other ship set delete boolean to true
			}
		}
		else {  // same as ^ but for opposite side
			if(x > frameWidth/6) {
				x -= speed;
				if(x < frameWidth/6) {
					x = frameWidth/6;
				}
			}
			else {
				del = true;	
			}
		}
	}

}