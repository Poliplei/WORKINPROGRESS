
int cuentaFrames;
int coorX, sentido;


void setupUno () {
  cuentaFrames = 0;
  coorX =  width/2;
  sentido =  1;
  
  }
  
  
void drawUno (){
  cuentaFrames++;
  if (cuentaFrames > 500){
  pantalla = 2;
  cuentaFrames = 0;
 
} 
  background(#FC0388); 
 
 fill(#FC6E2B);
 noStroke ();
 ellipse(coorX, height/2, 200, 200);
 
 coorX += 5 * sentido ;
 
 if (coorX > width-100 || coorX< 100 ) {
 sentido *= -1;
 
 }
 
}
  