int cuentaClics;
PImage[] fondos = new PImage [12] ; 
 
void setupTres () {
  cuentaClics = 0;
  for (int i = 0; i < 12; i++){
  fondos[i] = loadImage("fondo" + i + ".jpg");
    }
   }
  
  
void drawTres (){ 
  background(#FCFC33);
  image(fondos[cuentaClics], 0, 0);
 

 }