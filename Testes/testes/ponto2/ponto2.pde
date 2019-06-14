import processing.pdf.*;

PImage img;

void setup()
{
  //Carregar imagem
  img = loadImage("imagem.bmp");
  size(600,412);
  img.resize(600,412);
    
  noStroke();
  background(255);
  smooth();
}

void draw()
{
  
  beginRecord(PDF, "img.pdf"); //gera pdf
  for (int i = 0; i < img.width; i+=4){
      for (int j = 0; j < img.height; j+=4){       
      color pix = img.get(i, j);
      float bright = brightness(pix+20);
      fill(bright);
      //fill(pix);
      noStroke();
      //Cria os pontos
      //ellipse(i,j,int(10*(bright)/255),int(10*(bright)/255));
      ellipse(i,j,20,20);
     }
  }
  
  noLoop();
  endRecord();
}