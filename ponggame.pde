//Alyssa Aguilar, 5/29/17
int x = 0;
int y= 0;
int score= 0;
int xchange = -17;
int ychange = -17;
int gameend = 0;
PFont font;
int timer= millis();

void setup (){
  frameRate(15);
  size (500,500);
  x=(int)random(width);
  y= 250;
  font = loadFont("LucidaSans-TypewriterBold-48.vlw");
}

void draw() {
  if (gameend == 0) {
    background(72, 68, 232);
    textFont(font);
    textSize(20);
    text("Score:" + score, 150, 30);
    text("Time:" + timer, 350, 30);
    fill (245, 10, 26);
    rect(mouseX, 475, 150, 50);
    fill (255);
    ellipse(x, y, 25, 25);
    x = x+ xchange;
    y= y + ychange;
    if ((x<0) || (x>width)) {
      xchange= -xchange;
    }
    if(y<0) {
      ychange = -ychange;
    }
    if(y> 465) {
      if (x> mouseX && x<mouseX +150) {
        ychange= -ychange;
        score++;
     if(score%5 == 0) {
      background(250, 243, 13);
       textSize(50);
       fill(245, 10, 26);
      text("WOW!", 150, 225);
      fill (245, 10, 26);
    ellipse(x, y, 25, 25);
    }
      }
      else
      {
        gameover();
      }
    }
  }
  else 
  {
    background (0);
    textSize(50);
    fill(255);
    text("Game Over", 120, 250);
  }
}

void gameover()
{
  gameend=1;
}
