float currentTime = 0;
float pastTime = 0;

float startingTime = 0;
float gameTime = 0;

boolean playing = false;

void timeCalc(){
  
  pastTime = currentTime;
  currentTime = millis();
  
  if(playing){
    gameTime = currentTime - startingTime;
  }
  
}