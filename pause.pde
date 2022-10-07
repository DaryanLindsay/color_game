void pause(){
  textSize(80);
  fill(green);
  text("PAUSED", width/2, 200);
  fill(black);
  stroke(black);
  triangle(520, 2, 520, 38, 560, 17.5); 
  amazingRect(120, 450, 140, 60, 90, blue, "UNPAUSE", 30);
  amazingRect(320, 450, 140, 60, 90, red, "QUIT", 30);
}

void pauseClicks(){
  if(mouseX > 120 && mouseX < 260 && mouseY > 450 && mouseY < 510){
    mode=GAME;
  }else if(mouseX > 320 && mouseX < 460 && mouseY > 450 && mouseY < 510){
    mode = GAMEOVER;
  }else if(mouseX > 520 && mouseX < 560 && mouseY > 2 && mouseY < 38){
    mode = GAME;
  }
  
}
