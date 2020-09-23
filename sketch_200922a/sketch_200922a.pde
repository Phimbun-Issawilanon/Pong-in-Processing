public class Ball{
  float position_x,  position_y;
  float size;
  float xspeed = 2.8, yspeed = 2.2;
  int xdirection = 1, ydirection = 1;
  
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
    position_x = position_x+(xspeed*xdirection);
    position_y = position_y+(yspeed*ydirection);
    if (position_x> width-((size/2)+20)|| position_x < (size/2)+20) {
        xdirection *= -1;
    }
    if (position_y > height-(size/2)|| position_y < size/2) {
        ydirection *= -1;
    }
    draw();
  }
  
}

public class Pong_Game{
  int score;
  
  
  public void ball_reset(){
  }
  
  public void update(){
  }
  
  
 void score(){
   fill(255);
   text(score, 28, 162);
   
 }
 
}
public class Paddle{
  float bounce;
  float paddle_x, paddle_y, paddle_w, paddle_h ,paddle_yR, paddle_yL;
  String input;
  
  
  Paddle(float pad_w,float pad_h){
    paddle_x = width;
    paddle_y = height/3;
    paddle_yL = paddle_y;
    paddle_yR = paddle_y;
    paddle_w = pad_w;
    paddle_h = pad_h;
  }
  
  public void draw(){
    fill(255);
    rect(paddle_x-20, paddle_yR, paddle_w, paddle_h);
    rect(paddle_x-900, paddle_yL, paddle_w, paddle_h);
  }
  public void racket_update(int y){
    delay(60);
  
    
  }
  public void move_racket(){
    if (dist(paddle_x-20,paddle_y, mouseX, mouseY)< paddle_w+paddle_h){
      cursor(HAND);
      if(mousePressed){
        paddle_yR = mouseY;
      }   
    }
    else if (dist(paddle_x-900,paddle_y, mouseX, mouseY) < paddle_h){
      cursor(HAND);
      if(mousePressed){
        paddle_yL = mouseY;
      }   
    }
    else {
      cursor(ARROW);
    }
    draw();
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
  ball.ball_move();
  paddle.move_racket();

}
