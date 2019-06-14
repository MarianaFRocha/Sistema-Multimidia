 
Popart pop;
PImage img;
 
void setup()
{
    size (700, 700); 
    img = loadImage ("imagem.bmp");
    pop = new Popart();
    filtro ();
    
}
   
void draw ()
{
  background (247);
  image(img, 0, 0);
}
 
void mousePressed ()
{
  setup();
}

 void filtro ()
  {
    img.loadPixels();
    img.resize(700,700);
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
    System.out.println("Entrou");
    img.updatePixels();
  }