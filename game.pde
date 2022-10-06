void game() {
  strokeWeight(0);
  //drawing background
  fill(orange);
  rect(0, 0, width/2, height);
  fill(white);
  rect(width/2, 0, width/2, height);
  
  //drawing text for background
  fill(black);
  textSize(50);
  text("Match", width/4, height/ 3);
  
  fill(blue);
  text("Don't", width/4 * 3, height/3 - 25);
  text("Match", width/4 * 3, height/3 + 25);
  
  //puzzles
  fill(colors[randomColor]);
  text(words[randomWord], width/2, height/2);
  
  if (randomWord == randomColor){
    colorMatch = true;
  } else {
    colorMatch = false;
  }
  
  textSize(50);
  fill(black);
  text("SCORE: "+score, 450, 75);
  
  //timer
  timer--;

  //timer bar
  bar = timer * 5;
  fill(red);
  rect(0, 30, bar, 15);
  
  if(timer == 0){
    failure.rewind();
      failure.play();
      mode = GAMEOVER;
    }
}

void gameClicks() {
  //println( mouseX > 0 && mouseX < width/2 && mouseY > 0 && mouseY < height, mouseX > width/2 && mouseX < width && mouseY > 0 && mouseY < height,  colorMatch);
  if(mouseX > 0 && mouseX < width/2 && mouseY > 0 && mouseY < height) {
    if(colorMatch == true) {
      score++;
      success.rewind();
      success.play();
      colorMatcher();
      timer = 120;
    }else{
      failure.rewind();
      failure.play();
      mode = GAMEOVER;
    }
    
  }else if(mouseX > width/2 && mouseX < width && mouseY > 0 && mouseY < height) {
    if(colorMatch == false) {
      score++;
      success.rewind();
      success.play();
      colorMatcher();
      timer = 120;
    }else{
      failure.rewind();
      failure.play();
      mode = GAMEOVER;
  }
  
  
}
}
