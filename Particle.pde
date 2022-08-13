class Particle{
  int x;
  int y;
  float clr;
  Particle(){
    x = int(random(0,width));
    y = int(random(0,20));
    clr = random(150,255);
  }
  
  void display(){
    noStroke();
    fill(clr);
    rect(x,y,1,1);
  }
  void move(){ 
    loadPixels();
    for (int i=0; i<width;i++){
      for (int j=0; j<height;j++){
        if(j!=height){
          if (pixels[width*(j+1)+i-width]!=color(0,0,0)&&y<height-3){
            //x+=map(noise(frameCount*x), 0,1, -1,1);
            y+=1;
          }
        }
      }
    }
    
    updatePixels();
    
    
  }

}
