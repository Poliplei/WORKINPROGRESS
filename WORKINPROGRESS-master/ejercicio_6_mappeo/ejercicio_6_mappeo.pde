
float cursorXMapeado, cursorYMapeado;


void setup() {
  size(400, 400);
  

}

void draw (){
 background (255);
 
 
 fill (0);
 rect(100,250,100,100);
 
 cursorXMapeado = map(mouseX,100, 200, 0, 400);
 cursorYMapeado = map(mouseY, 250, 350,40, 400);
 
 println(cursorXMapeado);
 
 if (mouseX > 100 && mouseX < 200 && mouseY > 250 && mouseY< 350) {
 fill(cursorYMapeado, cursorXMapeado, cursorYMapeado);
 noStroke();
 ellipse(cursorXMapeado, 150, cursorYMapeado, cursorYMapeado);
 
}
}