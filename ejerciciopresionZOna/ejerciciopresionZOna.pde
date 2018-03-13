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
  fill(255);
  ellipse(199, 310, 20, 20);
}
}else { colCuad = color(0);



}

}


void mousePressed(){
println (mouseX+" , "+mouseY);
}