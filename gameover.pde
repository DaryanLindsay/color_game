void gameover() {
  song.rewind();
  timer = 120;
  strokeWeight(10);
  background(black);
  textSize(100);
  fill(red);
  text("GAME OVER", width/2, height/3);
  
  if(score>best){
    best=score;
  }
  textSize(50);
  text("BEST: "+best, 450, 400);
  text("SCORE: "+score, 170, 400);
  
  //buttons
  amazingRect(width/3 - 50, 500, 75, 40, 90, red, "TRY AGAIN", 12);
  amazingRect(width/3 * 2, 500, 75, 40, 90, red, "MENU", 12 );
 
  
 
}

void gameoverClicks() {
  if(mouseX > width/3 - 50 && mouseX < width/3 + 25 && mouseY > 500 && mouseY < 540) {
    mode = GAME;
    score = 0;
    colorMatcher();
  }else if(mouseX > width/3 * 2 && mouseX < width/3 * 2 + 75 && mouseY > 500 && mouseY < 540) {
    mode = INTRO;
  }
  
}
