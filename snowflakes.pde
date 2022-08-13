ArrayList<Particle> snowflakes;
void setup(){
  size(140,140);
  snowflakes = new ArrayList<Particle>();
  
}
void draw(){
  
  background(0);
  if (frameCount%6==0){
    for (int i =0; i<10;i++){
    Particle snowflake = new Particle();
    snowflakes.add(snowflake);
    }
  }
  
  for (Particle s: snowflakes){
    s.display();
    s.move();
  }
  
}
