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
		text("TITLE PENDING", x, y - 150);
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
			how = true;
			println("how to play");
		}
	}

	void instruc() {
		String howTP = "Left Player: W - Incease Laser Power, S - Decrease Laser Power, A - Lower Shield, D - Raise Shield:  Right Player: Respectively Up, Down, Left, Right  : Lasers fire automaticaly, you control the power of your shield and laser.  A large shield will completely absorb a small laser, a small shield will absorb a large laser.  Try to match laser thickness with shield thickness to absorb as much damage as possible";
		strokeWeight(3);
		stroke(255, 100);
		fill(100,100);
		rect(x,y, 1000, 400);
		fill(255);
		textSize(27);
		text(howTP, x, y, 900, 300);
		fill(100,100);
		ellipse(x, y + 250, 50, 50);
	
		if(mousePressed && mouseY >= y + 250 - 25 && mouseY <= y + 250 + 25 && mouseX >= x - 25 && mouseX <= x +25 ) {
			how = false;
			println("back");
		}
	}
}