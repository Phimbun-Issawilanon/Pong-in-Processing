class Ball{
  float position_x,  position_y;
  float size;
  
  Ball(float pos_x,float pos_y, float size){
    position_x = pos_x;
    position_y = pos_y;
    size1 = size;
  }
  void draw(){
    circle(position_x,position_y,size);
  }
  void ball_move(){
  }
  
}

class PongGame{
  int score;
  
  void ball_reset(){
  }
  void updte(){
  }
  void moveracket(){
    if(keyPressed){
    } 

  }
 void score(){
 }
}
class Paddle{
  float bounce;
  void ball_bounce(){
  }
}
void setup(){
}
void draw(){
}
