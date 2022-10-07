//Daryan Lindsay
//1-2

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//mode variables
int mode;
final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
final int CONTROLS = 5;

//color variables
color black = #011627;
color white = #fdfffc;
color blue = #00a5cf;
color red = #e71d36;
color orange = #ff9f1c;
color green = #70e000;


//text size variable
float s = 5; //size of text 

//gif variables
PImage[] gif;
int numberOfFrames;
int f = 0; 

//puzzle variables
int randomWord = (int) random(0, 3);
int randomColor = (int) random(0, 3);
String[] words = {"Red", "Green", "Blue"};
color[] colors = {red, green, blue};
boolean colorMatch; //boolean variable to check if the color matches the word
float willColorsMatch; //float to make it even whether the colors match or not

//score variables
int score = 0;
int best = 0;

//animate color of intro text
int counter = 0;

//sound variables
Minim minim;
AudioPlayer song, success, failure;

//font variables
PFont font1;

//timer variables
int timer = 120;

//variable for timer bar increasing when timer decreases
int bar;


void setup() {
  size(600, 600);
  textAlign(CENTER, CENTER);
  mode = INTRO;
 
 //set up gif variables
 int i = 0;
 numberOfFrames = 46;
 gif = new PImage[numberOfFrames];
 
 while (i < numberOfFrames) {
  gif[i] = loadImage("frame_"+i+"_delay-0.04s.gif");
 i++;
   }
   
   //set up minim variables
   minim = new Minim(this);
   song = minim.loadFile("MUSIC.mp3");
   success = minim.loadFile("SUCCESS.wav");
   failure = minim.loadFile("FAILURE.wav");
   
   //setup font
   font1 = createFont("font1.ttf", 100);
   
}

void draw() {


  //mode framework
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  }else if(mode == PAUSE) {
    pause();
  }else if(mode == CONTROLS){
    controls();
  }
}

//for clicking in the different modes
void mouseClicked() {
 if(mode == INTRO) {
 introClicks(); 
 }else if(mode == GAME) {
 gameClicks(); 
 }else if(mode == GAMEOVER) {
   gameoverClicks();
 }else if(mode == PAUSE){
   pauseClicks();
 }else if(mode == CONTROLS){
   controlsClicks();
 }else{
    println("Mode error:" +mode);
  }
 
 
}

//for making 50/50 odds
void colorMatcher(){
  randomWord = (int) random(0, 3);
  randomColor = (int) random(0, 3); 
  willColorsMatch = random(0, 1);
  if (willColorsMatch >= 0.5){
    randomWord = randomColor;
  }else if(willColorsMatch <0.5 && randomWord == randomColor){
    if(randomColor < 2){
     randomColor++;
    }else if(randomColor > 2){
      randomColor--;
}
}
}
//tactile button functions
boolean touchingRect(int x, int y, int w, int h) {
 if(mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h){
   return true;
 }else{
   return false;
 }  
}

void amazingRect(int x, int y, int w, int h, int r, color f, String s, int z){
  fill(f);
  strokeWeight(5);
  if(touchingRect(x, y, w, h)){
    stroke(white);
  }else{
    stroke(black);
  }
  rect(x, y, w, h, r);
  fill(black);
  textAlign(CENTER, CENTER);
  textSize(z);
  text(s, x+(w/2), y + (h/2));
}
