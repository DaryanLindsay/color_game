void intro() {
  //play song
  song.play();
  
  //gif
    if (f == numberOfFrames) {
    f= 0;
  }

  image(gif[f], 0, 0, width, height);
  if (frameCount % 3 == 0) {
    f++;
  }
  
  
  stroke(black);
  
   //animate color of intro text
    counter++; 
    if(counter < 20) {
      fill(white);
    } else if(counter > 20 && counter < 40) {
      fill(blue);
    }else if(counter > 40 && counter < 60) {
    fill(red);
   }else if(counter > 60 && counter < 80) {
     fill(orange);
   }else if(counter > 80 && counter < 100) {
     fill(green);
   }else if(counter == 100){
    counter = 0;
   }
   //setup font
   textFont(font1);
 
 
  //drawing intro text
   textSize(s);
   textAlign(CENTER, CENTER);
   text("AMAZING COLOR GAME!", 300, 200);
   s = s + s/25;
   if(s >=150){
     s = 5;
   }
   
   //play button
   strokeWeight(5);
   fill(blue);
   stroke(z);
   textSize(25);
   rect(400, 450, 100, 60, 30);
   fill(black);
   text("PLAY!", 455, 475);
   
   //make button tactile
    if(mouseX > 400 && mouseX < 500 && mouseY > 450 && mouseY < 510) {
    z = white;
  }else{
    z = black;
  }
  
  //best score text
  text("BEST: "+best, 500, 80);
}

void introClicks() {
    if(mouseX > 400 && mouseX < 500 && mouseY > 450 && mouseY < 510) {
    mode = GAME;
    score = 0;
    colorMatcher();
    //randomWord = (int) random(0, 3);
    //randomColor = (int) random(0, 3);
  }
  
}
