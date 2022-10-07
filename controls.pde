void controls(){
  background(black);
  fill(blue);
  textSize(15);
  text("If the color matches the word, click MATCH or the A key", 300, 100);
  fill(orange);
  text("If the color does not match the word, click DON'T MATCH or the D key", 300, 200);
  
  amazingRect(120, 400, 100, 60, 90, green, "RETURN", 20);
}

void controlsClicks() {
  if (mouseX > 120 && mouseX < 220 && mouseY > 400 && mouseY < 460) {
    mode = INTRO;
  }
  
}
