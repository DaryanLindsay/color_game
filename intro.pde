//text size variable
float s = 20; //size of text 

void intro() {
  background(0);
  
  //drawing intro text
  textSize(s);
    fill(255);
   textAlign(CENTER, CENTER);
   text("AMAZING COLOR GAME!", 300, 200);
   s = s + s/25;
   if(s >=150){
     s = 5;
   }
   
   //play button
   textSize(25);
   rect(400, 450, 100, 60, 30);
   fill(0, 0, 100);
   text("PLAY!", 450, 470);
   
   }


void introClicks() {
    if(mouseX > 400 && mouseX < 500 && mouseY > 450 && mouseY < 510) {
    mode = GAME;
    
  }
  
  
}
