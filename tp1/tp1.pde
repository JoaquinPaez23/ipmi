//TP1 Joaquin Paez 95534/6

PImage Foto;

void setup(){
size(800,400);
   Foto=loadImage("walter.jpg");
   background(28,20,17);
}

void draw(){
  image(Foto,0,0,400,400 );

 
 //orejas
 fill(193,133,114);            
bezier(718,154,758,120,735,223,711,215);                                           
bezier(484,160,435,125,455,226,484,219);  


 //cabeza
 fill(193,133,114);
ellipse(600,170,240,320);
noStroke();
  ellipse(600,100,230,180);
 stroke(1);
 fill(173,118,101);
 triangle(677,299,600,400,525,296);
 noFill();
 

 
 
 //arrugas
 line(515,95,689,95);
 line(525,110,680,110);
 line(535,125,670,125);
 
  //ojos
 ellipse(551,160,45,15);
 ellipse(651,160,45,15);
   pushStyle();
   fill(0);
 ellipse(551,158,20,10);
   ellipse(651,158,20,10);
   popStyle();
   
   //nariz
   line(592,155,579,210);
  
  line(609,155,622,210);
   line(622,210,579,210);
   
   line(622,210,609,233);
   line(579,210,592,233);
   line(592,233,609,233);
   
   line(579,210,569,216);
   line(569,216,575,230);
   line(575,230,588,226);
   
  line(622,210,632,216);
  line(632,216,626,232);
   line(626,232,613,226);
   
   pushStyle();
   fill(0);
   ellipse(583,227,7,4);
   ellipse(619,227,7,4);
      popStyle();

   //barba
   pushStyle();
  noStroke();
   fill(80,50,50);
   rect(531,260,30,65,10);
   rect(641,260,30,65,10);
   rect(555,278,90,55,10);
   rect(533,240,135,30,20);
   popStyle();
  
 //boca
 strokeWeight(3);
   line(565,274,635,274);
strokeWeight(1);   

//traje 
   pushStyle();
fill(33,22,18);
triangle(504,267,400,315,517,400);
triangle(400,315,517,400,400,400);
triangle(695,267,800,327,690,400);
triangle(690,400,800,400,800,327);
popStyle(); 

pushStyle();
fill(185,162,146);
triangle(504,267,600,400,517,400);
triangle(695,267,600,400,690,400);
popStyle();




//anteojos
  strokeWeight(2);

  ellipse(541,160,90,50); 
   line(586,157,616,157);
   ellipse(661,160,90,50);
   line(496,156,481,145);
   line(706,156,719,145);
   strokeWeight(1);   

 
  
}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
