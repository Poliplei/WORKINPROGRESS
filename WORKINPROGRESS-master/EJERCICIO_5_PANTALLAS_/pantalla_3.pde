int cuentaClics;
PImage[] fondos = new PImage [10] ; 
 
void setupTres () {
  cuentaClics = 0;
  for (int i = 0; i < 10; i++){
  fondos[i] = loadImage("fondo" + i + ".png");
    }
   }
  
  
void drawTres (){ 
  background(#FCFC33);
  image(fondos[cuentaClics], 0, 0);
 

 }