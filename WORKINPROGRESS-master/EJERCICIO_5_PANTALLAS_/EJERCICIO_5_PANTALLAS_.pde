
int pantalla;
PFont font;
int iuCoorH, iuCoorV;
int iuAncho;


void setup() { 
  size(400, 400);
  pantalla = 0;
  frameRate(50);
  font = loadFont("SynchroLET-48.vlw");
  textFont(font,20);
  
  iuCoorH = 275;
  iuCoorV = 365;
  iuAncho = 30;
  
  
  setupUno();
  setupDos();
  setupTres();
  setupCuatro();
  setupCinco();

}


void draw() {    
if(pantalla == 0) { 
  
  background(0);
  fill(255);
  text("Clickear para comenzar", 80, 200);
  
}else if (pantalla == 1){ 
  
   background(#FC0388); 
   drawUno();
   dibujaBotones("Pantalla 1", 2, 3, 4, 5);
   
}else if (pantalla == 2){ 
  
 drawDos ();
 dibujaBotones("Pantalla 2", 1, 3, 4, 5);

}else if (pantalla == 3){ 
  drawTres();
  dibujaBotones("Pantalla 3", 1, 2, 4, 5);
  
}else if (pantalla == 4){ 
  drawCuatro();
  dibujaBotones("Pantalla 4", 1, 2 , 3, 5);
  
}else if (pantalla == 5){ 
  drawCinco();
  dibujaBotones("Pantalla 5", 1, 2 , 3, 4);
   
  }
}

 void mousePressed (){
     if (pantalla == 3){  
     cuentaClics ++; 
     
     if (cuentaClics > 9){
       pantalla=4;
       cuentaClics =0;
  } 
 }
}   
void mouseReleased () { 
   
  if (pantalla == 0){ 
     
  pantalla= 1;
  
  }else if (pantalla == 1){  
    
   navegar(2,3,4,5);
    
   
      
  }else if (pantalla == 2){ 
    
    navegar(1,3,4,5);
       
   
  
  }else if (pantalla == 3){  
    
     navegar(1,2,4,5);
       
   
     
  }else if (pantalla == 4){ 
    
     navegar(1,2,3,5);
         
         
         
  }else if (pantalla == 5){  
    
     navegar(1,2,3,4);
           
    }
  }


void dibujaBotones(String pantalla, int botonA, int botonB, int botonC, int botonD){ 
   
   stroke (0);
   strokeWeight(0.5);
   
   if (mouseX>275 &&  mouseX<275+30 && mouseY>365 && mouseY<365 +30) {
    
     colorearBoton();
     rect(275,365, 30, 30);
     
    } else if (mouseX>305 &&  mouseX<305+30 && mouseY>365 && mouseY<365 +30) {
      
     colorearBoton();
     rect(305,365, 30, 30);
      
   } else if (mouseX>335 &&  mouseX<335+30 && mouseY>365 && mouseY<365 +30) {
    
     colorearBoton();
     rect(335,365, 30, 30);
     
   } else if (mouseX>365 &&  mouseX<365+30 && mouseY>365 && mouseY<365 +30) {
     
      colorearBoton();
      rect(365,365, 30, 30);
    }
   
   fill(0);
   text(botonA, 286,388);
   text(botonB, 316,388);
   text(botonC, 346,388);
   text(botonD, 376,388);
   text(pantalla, 5,20);
  }

void iniciarVariables(){
  cuentaFrames = 0;
  ancho = 40;
  cuentaClics = 0;
  }
  
void colorearBoton(){
  if(mousePressed) {
  fill(#62ED07);
  }else{
  fill(#07EDEB);
  
  }
  }

 void navegar(int a, int b, int c, int d) {
    if (mouseX>iuCoorH &&  mouseX< iuCoorH + iuAncho && mouseY> iuCoorV && mouseY<iuCoorV  + iuAncho){
      pantalla =a;
      iniciarVariables();
      
    }else if (mouseX> iuCoorH + iuAncho &&  mouseX< iuCoorH + iuAncho*2 && mouseY> iuCoorV && mouseY<iuCoorV  + iuAncho){
      pantalla =b;
      iniciarVariables();
      
    }else if (mouseX>iuCoorH + iuAncho*2 &&  mouseX<iuCoorH + iuAncho*3 && mouseY>iuCoorV && mouseY<iuCoorV  + iuAncho){
      pantalla =c;
      iniciarVariables();
      
    }else if (mouseX> iuCoorH + iuAncho*3 &&  mouseX<iuCoorH + iuAncho*4 && mouseY>iuCoorV && mouseY<iuCoorV  + iuAncho){
      pantalla =d;
      iniciarVariables();
  } 
 }