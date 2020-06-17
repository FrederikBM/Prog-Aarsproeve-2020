public class Jerry {

    public int positionX;
    public int positionY;
    float vinkel = 90; 
    float angle;
    
    Jerry(int a, int b){
    positionX = a;
    positionY = b;
    }
   
   void moveJerry(){
        if((positionY<=700)&&(positionX==100)||((positionY>=400)&&(positionY<=700)&&(positionX==400))){
            positionY=positionY + 3;
        }
        if((positionY>700)&&(positionX<=700)){
            positionX=positionX + 3;
        }
        if((positionY>100)&&(positionX==700)){
            positionY=positionY - 3;
        }
        if((positionY==100)&&(positionX>100)){
            positionX=positionX - 3;
        }
    }
    
      void drejJerry(){
    if ((positionY>700)&&(positionX<=700)){
      fill(0);
     ellipse(positionX+12,positionY,5,5);
     ellipse(positionX-8,positionY,5,5);
    }
    if((positionY>100)&&(positionX==700)){
     fill(0);
     ellipse(positionX+10,positionY-5,5,5);
     ellipse(positionX-10,positionY-5,5,5);
    }
    if((positionY==100)&&(positionX>100)){
      fill(0);
     ellipse(positionX+8,positionY,5,5);
     ellipse(positionX-12,positionY,5,5);
    }
    if((positionY<=700)&&(positionX==100)){
     fill(0);
     ellipse(positionX+10,positionY+5,5,5);
     ellipse(positionX-10,positionY+5,5,5);
     }
    if ((positionY>=400)&&(positionY<=700)&&(positionX==400)){
    fill(0);
     ellipse(positionX+10,positionY+5,5,5);
     ellipse(positionX-10,positionY+5,5,5);
    }
      }
      
    
    void tegnJerry(){
      pushMatrix();
      fill(140);
      ellipse(positionX,positionY,50,50);
      fill(255);
      ellipse(positionX+10,positionY,15,15);
      ellipse(positionX-10,positionY,15,15);
      popMatrix();
        
    }
}
