 
PImage img;
 
void setup()
{
    //  size (700, 700); 
    size(700,400);
    //img = loadImage ("imagem.bmp");
    //img = loadImage ("dog.jpg");
    img = loadImage ("sunflower.jpg");
    img.resize(700,400);
    //img.resize(700,700);
    
    filtro ();
}
   
void draw ()
{
  background (247);
 // image(img, 0, 0);
 
 //Pontilhado
   for (int i = 0; i < img.width; i+=4){
      for (int j = 0; j < img.height; j+=4){       
      color pix = img.get(i, j);
      fill(pix);
      noStroke();
      ellipse(i,j,5,5);
     }
  }
}
 
void mousePressed ()
{
  setup();
}

 void filtro ()
  {
    img.loadPixels();
    color c = color (random (255), random (255), random (255) );
 
    float imagemValor = 0, m = 0;
    color novaCor = 1;
    //imagem.loadPixels();
    
    for (int i = 0; i < img.pixels.length; i++)
    {
      imagemValor= red (img.pixels[i]);
      m = map (imagemValor, 0, 255, 0, 1); 
      novaCor= lerpColor (img.pixels[i], c, m);
      img.pixels[i] = novaCor;
    }
    img.updatePixels();
  }
  
  