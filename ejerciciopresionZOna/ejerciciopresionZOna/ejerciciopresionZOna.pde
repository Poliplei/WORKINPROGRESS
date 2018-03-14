float coX, coY; // Coordenadas del círculo
float posXTex, posYTex; // Coordenadas del numero
color colCuad; // Color del cuadrado
int cont; // Contador de "mousePressed"
float diam; // Diámetro del círculo;
int distancia; // distancia entre el cuadrado y el círculo.


void setup(){
size(400,400);
smooth();
coX=40;
coY=60;
posXTex= width/2;
posYTex= 160;
colCuad= color(0);
PFont fuente; 
fuente = loadFont("Chalkboard-Bold-48.vlw"); 
textFont(fuente); 
cont=0;
diam= 40;
distancia = 200;

}

void draw(){
background(255);
noStroke();
fill(colCuad);
rect(170 ,280 , 60,60);
fill(200,0,0);
ellipse(coX,coY,diam,diam);
fill(0);
textSize(distancia); 
text(cont, posXTex,posYTex);





 if (mouseX>170 &&  mouseX<170+60 && mouseY>280 && mouseY<280 +60) {
colCuad = color (#FFB9DC);
diam = map (mouseX,170, 170+60, 10, 100);

if (mousePressed) {
  cont +=1 ;
  stroke(#FCF21F);
  line(coX, coY, 200, 310);
  noStroke();
  colCuad = color (#A3E8FC);
  fill(255);
  ellipse(200, 310, 50, 50);
  coX += 5; 
  coY += 0.5; 
  if(coX > width){ 
  coX= 0;
  if(coY > height){ 
  coY= 0;
  cont += 1;
 
  }
 }
}

}else { colCuad = color(0);
}
}
void mouseReleased (){
if(mouseX>170 &&  mouseX<170+60 && mouseY>280 && mouseY<280 +60){
posXTex =random (100,300);
posYTex =random (100,300);


}
}




void mousePressed(){
println (mouseX+" , "+mouseY);
}