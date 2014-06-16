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
			println("how to play");
		}
	} 
}