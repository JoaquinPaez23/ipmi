//Joaquin Paez 95534/6

PImage img1, img2, img3;
int contador; 
int estado;
String texto1, texto2, texto3;
float posX, posY;
boolean reiniciar = false; 
int aparece; 

void setup() {
  size(640, 480);
  
  img1 = loadImage("imagen1.jpg");
  img2 = loadImage("imagen2.jpg");
  img3 = loadImage("imagen3.jpg");

  texto1 = "Estas son unas obras conocidas \n como espejos mecanicos";
  texto2 = "Consisten en copiar lo que tiene enfrente \n como un espejo de verdad";
  texto3 = "Estas obras impresionantes \n son del artista Daniel Rozin";

  contador = 0;
  estado = 1;
  posX = 10; 
  posY = 0;
  aparece = 0;
}

void draw() { 
  
  //primera pantalla con movimiento del texto de arriba a abajo 
  if (estado == 1) {
    image(img1, 0, 0, 640, 480);
    fill(0);
    textSize(30);
    text(texto1, 150, posY);
    posY += 5;
    if (posY >= 410) {
      posY = 410;
    }
    contador++;
    if (contador >= 150) {
      estado++;
      contador = 0;
    }
  }
    //Segunda pantalla con movimieno del texto de derecha a izquierda 
  else if (estado == 2) {
    image(img2, 0, 0, 640, 480);
    fill(0);
    textSize(30);
    text(texto2, posX, 420);
    posX++;
    contador++;
    if (contador >= 150) {
      estado = 3;
      contador = 0;
    } 
  } 
  //Tercera pantalla con aparicion del texto de negro a blanco 
  else if (estado == 3) {
    image(img3, 0, 0, 640, 480);
    textSize(30);
     fill(255, aparece);
    text(texto3, 100, posY);
    aparece+=5;
    
    //Botón de reinicio
    fill(255, 0, 0);
    rect(10, 10, 100, 50);
    fill(255);
    textSize(20);
    text("Reiniciar", 20, 40);
  
  }
}

void mousePressed() {
  if (mouseX > 10 && mouseX < 110 && mouseY > 10 && mouseY < 60) {
      reiniciar = true;
    }
    if (reiniciar) {
      contador = 0;
      estado = 1;
      posX = 10;
      posY = 0;
        aparece = 0;
      reiniciar = false;
    }

  }
