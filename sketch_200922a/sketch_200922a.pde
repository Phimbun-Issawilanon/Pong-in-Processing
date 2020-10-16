public class Ball{
  float position_x,  position_y;
  float size;
  float xspeed = 2.8, yspeed = 2.2;
  int xdirection = 1, ydirection = 1;
  int leftscore, rightscore;
  
  Ball(float size1){
    position_x = width/2;
    position_y = height/2;
    size = size1;
  }
  
  public void draw(){
    circle(position_x,position_y,size);
  }
  
  public void ball_move(){
    position_x = position_x+(xspeed*xdirection);
    position_y = position_y+(yspeed*ydirection);
    if (position_x> width+60) { 
        position_x = width/2;
        position_y = height/2;
        
    }
    else if (position_x<50) {
       
        xdirection *= -1;
       
    }
    
    if ( position_x > width-50 && position_x < width -40 && position_y > mouseY-400/2 && position_y < mouseY+200 ) {
        xdirection *= -1;
    } 
    
    if ( position_x > width-880 && position_x < width -850 && position_y > mouseY-400/2 && position_y < mouseY+200 ) {
        xdirection *= -1;
    } 
    
    if (position_y > height-(size/2)|| position_y < size/2) {
        ydirection *= -1;
    }
    
    draw();
  }
  
}



  

public class Paddle{
  float bounce;
  float paddle_x, paddle_y, paddle_w, paddle_h ,paddle_yR, paddle_yL;
  String input;
  
  Paddle(float pad_w,float pad_h){
    paddle_x = width;
    paddle_y = height/3;
    paddle_yR = paddle_y;
    paddle_w = pad_w;
    paddle_h = pad_h;
  }
  
  public void draw(){
    fill(255);
    rect(paddle_x-20, paddle_yR, paddle_w, paddle_h);
    
  }
  public void move_racket(){
    
    if (dist(paddle_x-20,paddle_y, mouseX, mouseY) < height-400 ){
      if(mousePressed){
        paddle_yR = mouseY;
      }   
    }
    
    else if (dist(paddle_x-900,paddle_y, mouseX, mouseY) < height-350){
      if(mousePressed){
        paddle_yL = mouseY;
      }   
    }
    
    draw();
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
  paddle.move_racket();
  ball.ball_move();
}
