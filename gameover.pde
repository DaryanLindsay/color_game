void gameover() {
  song.rewind();
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
  fill(red);
  stroke(z);
  rect(width/3 - 50, 500, 75, 40);
  stroke(p);
  rect(width/3 * 2, 500, 75, 40);
  
  //text for buttons
  textSize(12);
  textAlign(CENTER, CENTER);
  fill(black);
  text("TRY AGAIN", width/3 - 12.5, 520);
  text("MENU", width/3 * 2 + 37.5, 520);
  
  
  
   //make button tactile
    if(mouseX > width/3 - 50 && mouseX < width/3 + 25 && mouseY > 500 && mouseY < 540) {
    z = white;
  }else{
    z = black;
  }
   
   if(mouseX > width/3 * 2 && mouseX < width/3 * 2 + 75 && mouseY > 500 && mouseY < 540) {
    p = white;
  }else{
    p = black;
  }
  
}

void gameoverClicks() {
  if(mouseX > width/3 - 50 && mouseX < width/3 + 25 && mouseY > 500 && mouseY < 540) {
    mode = GAME;
    score = 0;
    colorMatcher();
    //randomWord = (int) random(0, 3);
    //randomColor = (int) random(0, 3);
  }else if(mouseX > width/3 * 2 && mouseX < width/3 * 2 + 75 && mouseY > 500 && mouseY < 540) {
    mode = INTRO;
  }
  
}
