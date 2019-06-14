
PImage img;

void setup ()
{
  
  //Carregar imagem
  img = loadImage("dog.jpg");
  
   size (700, 700);

    Popart pop = new Popart();
    fillpopArt (0);
  }
 
 
  aCounter = 0;
   
}



void draw(){
  

}


 void randomColoredBackground ()
  {
    img.loadPixels();
    color c = color (random (255), random (255), random (255) );
    for (int i = 0; i < img.pixels.length; i++) 
        img.pixels[i] = c;
    img.updatePixels();
  }
  
  
  //redimensiona a imagem
   PImage rImagem (PImage img_)
  {
    if (img_.width == img.width && img_.height == img.height) 
         return img_;
    else
    {
        PImage smallImage = img_;
        smallImage.resize (img.width, img.height);
        return smallImage;
    }
  }