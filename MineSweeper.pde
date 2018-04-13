void setup(){
  
  size(900, 580);
  
  caseSizeX = width/GAME_SIZE_X;
  caseSizeY = (height - EDGE_HEIGHT)/GAME_SIZE_Y;
  
  if(caseSizeX < caseSizeY){
    font = createFont("STENCIL.TTF", caseSizeX);
  }else {
    font = createFont("STENCIL.TTF", caseSizeY); 
  }
  
  g = new Game();
  
  textAlign(CENTER, CENTER);
  
}


void draw(){
  
  background(170);
  textFont(font);
  
  timeCalc();
  
  g.update();
  
  g.show();
  
  if(!g.is_alive()){
    playing = false;
    game_over(g.has_won());
    if(g.can_Restart()){
      g = new Game();
    }
  }else {
    showStats();
  }
  
}