class Popart
{
  PImage img;
  
  Popart ()
  {
    initImage (width, height);
  }
 
  void initImage (int w, int h)
  {
    img = createImage (w, h, RGB);
  }
 
 void addLayer (PImage imagem)
  {
    
    img.loadPixels();
    imagem = redefineImagem(imagem);
    color c = color (random (255), random (255), random (255) );
 
    float imagemValor = 0, m = 0;
    color novaCor = 1;
    imagem.loadPixels();
    
    for (int i = 0; i < img.pixels.length; i++)
    {
      imagemValor= red (imagem.pixels[i]);
      m = map (imagemValor, 0, 255, 0, 1); 
      novaCor= lerpColor (img.pixels[i], c, m);
      img.pixels[i] = novaCor;
    }
    img.updatePixels();
  }
   
 
  PImage redefineImagem (PImage img_)
  {
    if (img_.width == img.width && img_.height == img.height) return img_;
    else
    {
      PImage smallImage = img_;
      smallImage.resize (img.width, img.height);
      return smallImage;
    }
  }
  
  void draw ()
  {
    image(img, 0, 0);
  }
 
}