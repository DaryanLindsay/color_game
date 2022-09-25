//mode framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;


void setup() {
   size(600, 600);
   mode = INTRO;
}

void draw() {
   
   
   //mode framework
   if(mode == INTRO){
     intro();
   } else {
     game();
  }
}

  
