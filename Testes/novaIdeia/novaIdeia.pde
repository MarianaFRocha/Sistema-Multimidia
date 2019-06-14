
PImage img;

void setup() {
  size(512, 512);

  img = loadImage("dog.jpg");
  
  //frameRate(30);
  img.loadPixels();

  loadPixels();
}

void draw() {
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++ ) {
      // Calculate the 1D location from a 2D grid
      int loc = x + y*img.width;
      // Get the R,G,B values from image
      float r,g,b;
      r = red (img.pixels[loc]);
      g = green (img.pixels[loc]);
      b = blue (img.pixels[loc]);
      // Calculate an amount to change brightness based on proximity to the mouse
      float maxdist = 50;//dist(0,0,width,height);
      float d = dist(x, y, mouseX, mouseY);
      float adjustbrightness = 255*(maxdist-d)/maxdist;
      r += adjustbrightness;
      g += adjustbrightness;
      b += adjustbrightness;
      // Constrain RGB to make sure they are within 0-255 color range
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);
      // Make a new color and set pixel in the window
      color c = color(r, g, b);
     // color c = color(r);
      pixels[y*width + x] = c;
    }
  }
  updatePixels();
}



void efeito()
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