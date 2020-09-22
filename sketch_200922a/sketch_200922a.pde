class Ball{
  float position_x,  position_y;
  float size;
  
  Ball(float pos_x,float pos_y, float size1){
    position_x = pos_x;
    position_y = pos_y;
    size = size1;
  }
  
  void draw(){
    fill(255);
    circle(position_x,position_y,size);
  }
  void ball_move(){
  }
  
}

class Pong_Game{
  int score;
  
  void ball_reset(){
  }
  
  void update(){
  }
  
  void move_racket(){
    if(keyPressed){
      
    } 

  }
  
 void score(){
 }
 
}
class Paddle{
  float bounce;
  float paddle_x, paddle_y, paddle_w, paddle_h ;
  
  Paddle(float pad_x,float pad_y, float pad_w,float pad_h){
    paddle_x = pad_x;
    paddle_y = pad_y;
    paddle_w = pad_w;
    paddle_h = pad_h;
  }
  
  void draw(){
    rect(paddle_x, paddle_y, paddle_w, paddle_h);
  }
  
  void ball_bounce(){
  }
}

Ball ball ;
void setup(){
  size(900,700);
  ball = new Ball(150,300,100);
}

void draw(){
  background(0);
  ball.draw();
}
