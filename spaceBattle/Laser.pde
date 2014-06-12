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
	float powerAd; // add thenumber from raiseLaserPower() and lowerLaserPower() to the power of the laser
	String side;
	boolean del = false; // boolean for deleting lasers from the array list

	Laser(String sideIn, float laserX, float laserY, float adjPower) { // pass through the position of the laser and its power (power function in spaceship class)
		x = laserX;
		y = laserY;
		speed = 10; // how fast the laser goes
		power = 3; // defualt power
		powerAd = adjPower;
		side = sideIn; // side the laser is on
	}

	void display() { // display laser, changes for each side
		if(side == "left") {
			strokeWeight(power + powerAd);
			stroke(255, 0, 0);
			line(x, y, x+5, y);
		}
		else {
			strokeWeight(power + powerAd);
			stroke(0, 255, 0);
			line(x, y, x-5, y);
		}
	}

	void move() { // move the laser
		if(side == "left") {
			if(x < frameWidth/6 *5) { // if it isnt at the other base yet, 
				x += speed; // move the laser
			}
			else {
				del = true;  // if it hits the other ship set delete boolean to true
			}
		}
		else {  // same as ^ but for opposite side
			if(x > frameWidth/6) {
				x -= speed;
			}
			else {
				del = true;	
			}
		}
	}

}