ArrayList<Tom> TomsVenner = new ArrayList<Tom>();
Jerry jerry = new Jerry(400,400);

void setup(){
size(800,800);
}

void draw(){ //fluen laves
  clear();
  drawJerry();
  drawTom();
}

void drawTom(){
  for(int i=0; i<TomsVenner.size(); i++){
    Tom f = TomsVenner.get(i);
    f.tegnTom();
    f.flytTom();
    f.drejTom();
  }
}

void drawJerry(){
    jerry.tegnJerry();
    jerry.drejJerry();
    jerry.moveJerry();
    
}
  
  void mousePressed(){ //flue dukker op der hvor man trykkede med musen
  TomsVenner.add(new Tom(mouseX, mouseY));

}
