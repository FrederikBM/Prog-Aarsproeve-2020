public class Tom{
  
  float positionX,positionY, size;
  float distanceFlyttetX;
  float distanceFlyttetY;
  float vinkel = 0; 
  float angle;

  Tom(float a, float b){
    positionX = a;
    positionY = b;
  }
  
void flytTom(){ //rykker fluerne og bestemmer deres hastighed
        if (positionY < jerry.positionY) {
            positionY = positionY + 2;
        }
        if (positionX < jerry.positionX) {
            positionX = positionX + 2;
        }
        if (positionY > jerry.positionY) {
            positionY = positionY - 2;
        }
        if (positionX > jerry.positionX ) {
            positionX = positionX - 2;
        }
    
  }
  
  void drejTom(){
      if ((positionY < jerry.positionY)&&(positionX < jerry.positionX)){
        vinkel = 45;
        angle = radians(vinkel);
      } 
      if ((positionY < jerry.positionY)&&(positionX > jerry.positionX)) {
        vinkel = 135;
        angle = radians(vinkel);
      } 
      if ((positionY > jerry.positionY)&&(positionX > jerry.positionX)) {
        vinkel = 225;
        angle = radians(vinkel);
      }
      if ((positionY > jerry.positionY)&&(positionX < jerry.positionX)) {
        vinkel = 315;
        angle = radians(vinkel);
      }
      if ((positionY == jerry.positionY+1)&&(positionX < jerry.positionX)||(positionY == jerry.positionY-1)&&(positionX < jerry.positionX)){
        vinkel = 0;
        angle = radians(vinkel);
      } 
      if ((positionY < jerry.positionY)&&(positionX == jerry.positionX+1)||(positionY < jerry.positionY)&&(positionX == jerry.positionX-1)){
        vinkel = 90;
        angle = radians(vinkel);
      } 
      if ((positionY == jerry.positionY+1)&&(positionX > jerry.positionX)||(positionY == jerry.positionY-1)&&(positionX > jerry.positionX)){
        vinkel = 180;
        angle = radians(vinkel);
      } 
      if ((positionY > jerry.positionY)&&(positionX == jerry.positionX+1)||(positionY > jerry.positionY)&&(positionX == jerry.positionX-1)){
        vinkel = 270;
        angle = radians(vinkel);
      } 
  }
  
void tegnTom(){ //flue tegnes
    pushMatrix();
    fill(70);
      translate(positionX,positionY);
      rotate(angle);
      translate(distanceFlyttetX,distanceFlyttetY);
      rect(-65,-5,40,10);
      rect(-30,-20,60,40);
      ellipse(30,0,30,40);
      fill(255);
      ellipse(40,5,5,5);
      ellipse(40,-5,5,5);
    popMatrix();
  }
}
