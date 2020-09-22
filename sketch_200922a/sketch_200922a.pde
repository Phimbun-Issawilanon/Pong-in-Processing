public class Ball{
  float position_x,  position_y;
  float size;
  
  Ball(float size1){
    position_x = width/2;
    position_y = height/2;
    size = size1;
  }
  
  public void draw(){
    fill(255);
    circle(position_x,position_y,size);
  }
  public void ball_move(){
  }
  
}

public class Pong_Game{
  int score;
  
  public void ball_reset(){
  }
  
  public void update(){
  }
  
  
 void score(){
 }
 
}
public class Paddle{
  float bounce;
  float paddle_x, paddle_y, paddle_w, paddle_h ;
  String input;
  
  Paddle(float pad_w,float pad_h){
    paddle_x = width;
    paddle_y = height/3;
    paddle_y = paddle_yL
    paddle_y = paddle_yR
    paddle_w = pad_w;
    paddle_h = pad_h;
  }
  
  public void draw(){
    fill(255);
    rect(paddle_x-20, paddle_yL, paddle_w, paddle_h);
    rect(paddle_x-900, paddle_yR, paddle_w, paddle_h);
  }
  public void racket_update(int y){
    delay(60);
    paddle_y = paddle_y+y;
    
  }
  public void move_racket(){
    if(keyPressed){
      if (key == 'w' || key == 'W'){
          racket_update(-10);
          println("C");
        }
        
        else if (key == 's' || key == 'S'){
          racket_update(10);
        }
    }
  }
  void ball_bounce(){
  }
}

Ball ball ;
Paddle paddle;
void setup(){
  size(900,700);
  ball = new Ball(100);
  paddle = new Paddle(20,200);
}

void draw(){
  background(0);
  ball.draw();
  paddle.draw(); 
}
