float angulo;
float increAng;
float ancho;


void setupDos() {
  angulo = 45;
  ancho = 40;
  increAng = 0 ;
  
  }
  
  
void drawDos (){ 
   background(#3337FC); 
   
   pushMatrix();
   translate(200,200);
   rotate(radians(angulo));
   noStroke();
   fill(#EDFF03);
   rect(-ancho/2,-ancho/2, ancho, ancho);
   popMatrix();
   
   increAng = map(mouseX, 0, width,3,15);
   
   angulo += increAng;
   ancho += 0.5;
   
   if (ancho > 500) {
     pantalla = 3 ;
     ancho= 40;
     
     }
  }
  