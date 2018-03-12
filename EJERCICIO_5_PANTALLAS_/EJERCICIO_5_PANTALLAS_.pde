
int pantalla;
PFont font;



void setup() { 
  size(400, 400);
  pantalla = 0;
  frameRate(50);
  font = loadFont("AppleGothic-48.vlw");
  textFont(font,20);
  
  setupUno();
  setupDos();
  setupTres();

}


void draw() {    
if(pantalla == 0) { 
  
  background(255);
  fill(0);
  text("Clickear para comenzar", 100, 200);
  
}else if (pantalla == 1){ 
  
   background(#FC0388); 
   drawUno();
   dibujaBotones("Pantalla 1", 2,3);
 
   
   
   
}else if (pantalla == 2){ 
  
 drawDos ();
 dibujaBotones("Pantalla 2", 1,3);

}else if (pantalla == 3){ 
  drawTres();
  dibujaBotones("Pantalla 3", 1,2);
  
   
}
}
 void mousePressed (){
     if (pantalla == 3){  
     cuentaClics ++;
     
     if (cuentaClics > 11){
       pantalla=1;
       cuentaClics =0;
  } 
 }
}   
void mouseReleased () { 
   
  if (pantalla == 0){ 
     
  pantalla= 1;
  
  }else if (pantalla == 1){  
    
    if (mouseX>335 &&  mouseX<335+30 && mouseY>365 && mouseY<365 +30){
      pantalla =2;
      
      iniciarVariables();
      
    }else if (mouseX>365 &&  mouseX<365+30 && mouseY>365 && mouseY<365 +30){
      pantalla =3;
      iniciarVariables();
  } 
      
  }else if (pantalla == 2){ 
    
    if (mouseX>335 &&  mouseX<335+30 && mouseY>365 && mouseY<365 +30){
      pantalla =1;
      
       iniciarVariables ();
    }else if (mouseX>365 &&  
    mouseX<365+30 && mouseY>365 && mouseY<365 +30){
      pantalla =3;
       iniciarVariables();
  }
  }else if (pantalla == 3){  
    
    if (mouseX>335 &&  mouseX<335+30 && mouseY>365 && mouseY<365 +30){
      pantalla =1;
      
       iniciarVariables ();
       
    }else if (mouseX>365 &&  mouseX<365+30 && mouseY>365 && mouseY<365 +30){
      pantalla =2;
       iniciarVariables();
      }
  }
}

void dibujaBotones(String pantalla, int botonA, int botonB){ 
   
   stroke (0);
   strokeWeight(0.5);
   
   if (mouseX>335 &&  mouseX<335+30 && mouseY>365 && mouseY<365 +30) {
    
     if(mousePressed) {
     fill(#62ED07);
   }else{
     fill(#07EDEB);
    }
     rect(335,365, 30, 30);
     
   } else if (mouseX>365 &&  mouseX<365+30 && mouseY>365 && mouseY<365 +30) {
     
     if(mousePressed) {
      fill(#62ED07);
   }else{
      fill(#07EDEB);
    }
      rect(365,365, 30, 30);
    }
   
   fill(0);
   text(botonA, 346,388);
   text(botonB, 378,388);
   text(pantalla, 5,20);
  }

void iniciarVariables(){
  cuentaFrames = 0;
  ancho = 40;
  cuentaClics = 0;
  }
    