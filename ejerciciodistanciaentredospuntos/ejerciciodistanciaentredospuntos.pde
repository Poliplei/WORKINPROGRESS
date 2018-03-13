float r;

void setup() {
  size(1000, 1000);
  smooth(); 
}


void draw() {
  background(random(255),random(255),random(255) );
  
 /* Calcula la distancia entre el centro de la ventana y el mouse. r será el  radio del círculo */
 
 r = dist(width/2, height/2, mouseX, mouseY); 
 
 ellipseMode(RADIUS);
 fill(mouseX,mouseY, mouseX);
 noStroke();
 ellipse(width/2, height/2, r, r);  
 
 fill(255, 0, 0);
 ellipse(width/2, height/2, 4, 4);
 ellipse(mouseX, mouseY, 4, 4);
 
 stroke(#5E39F7);
 line(mouseX, mouseY, width/2, height/2);
}

 

 

 

 

 

 

 

 