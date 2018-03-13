// "posH" el ancho del rectángulo horizontal y "tam" la altura del vertical. La otra medida de los rectángulos es 20.

float posH, tam;


void setup(){
size(400,400);
smooth();
}

void draw(){
background(#FF660D);
fill(255);
stroke(1);
rect(20,330,50,50);

 posH = map(mouseX,20, 70, 0, 400);
 tam = map(mouseY, 330, 380, 20, 400);

 
 if (mouseX > 20 && mouseX < 70 && mouseY > 330 && mouseY< 380) {
 fill(#9A89FF);
 noStroke();
 rect (0, 150, posH, 50);
 rect (posH-50, 175- tam/2, 50, tam);


 
 }
 }