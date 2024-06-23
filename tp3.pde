//Joaquin Paez 
//https://www.youtube.com/watch?v=3qGWeatN_fE
PImage imagenuno;

int x=400; 
int y=0;
int a=0;
boolean cambioColor = false; 

void setup() {
  size(800,400);
  
imagenuno = loadImage ("arteoptico.jpeg");
image(imagenuno, 0,0,400,400);

}

  
  void draw() {
    
 // segundo cuadrado 
  for( int x = 425; x < 800; x+=50){  
for (int y = 0; y < 400; y=y+50 ) {
  fill(cambioColor ? 0 : 255); 
  rect( x,y,25,25);

}
  } 
  
  // tercer cuadrado 
  for( int x = 400; x < 800; x+=50){  
for (int y = 25; y < 400; y=y+50 ){
   fill(cambioColor ? 255 : 0); 
  rect( x,y,25,25);
  
  }
  }
  
  for (int x = 0; x < width; x += 50) {  
    for (int y = 0; y < height; y += 50) { 
    drawTriangle1(x, y); // Triángulo con coordenadas (400, 25, 425, 25, 425, 0)
      drawTriangle2(x, y); // Triángulo con coordenadas (400, 25, 425, 0, 400, 0)
      drawTriangle3(x, y);
        drawTriangle4(x, y);
    }
  }
}

void drawTriangle1(int x, int y) {
  triangle(x + 400, y + 25, x + 425, y + 25, x + 425, y + 0);
  fill(177);
}

void drawTriangle2(int x, int y) {
  triangle(x + 400, y + 25, x + 425, y + 0, x + 400, y + 0);
 fill(0); 
}

 void drawTriangle3(int x, int y) {
  triangle(x + 425, y + 25,  x + 450, y + 25, x + 425, y + 50);
  fill(177);
  
 }
 
void drawTriangle4(int x, int y) {
 triangle(x + 450, y + 50, x + 425 , y + 50, x + 450, y + 25);
  fill(0);
 
}

void mousePressed() {
  cambioColor = !cambioColor;  // Cambiar el estado de la variable cambioColor al hacer clic
}
