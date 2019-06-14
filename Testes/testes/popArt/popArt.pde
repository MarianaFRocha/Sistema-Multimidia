final int XRES = 3;
final int YRES = 3;
final int PADD = 10;
final String PATH = "imagem";
int aCounter = 0;
boolean grid = true;
 
Popart [] pop;
PImage [] masken;
 
void setup ()
{
  size (700, 700);
  //smooth();
 
 //Pega as 5 imagens para o vetor
  masken = new PImage [5];
  for (int i = 0; i < masken.length; i++)
  {
    masken [i] = loadImage (PATH + ".bmp");
  }
 
  if (grid)
  {
    pop = new Popart [XRES*YRES];
    for (int i = 0; i < pop.length; i++) 
        pop [i] = new Popart ();
  }
  else
  {
    pop = new Popart [1];
    pop[0] = new Popart();
    fillpopArt (0);
  }
 
 
  aCounter = 0;
}
   
void draw ()
{
  background (247);
  int x = PADD, y = PADD, w = grid ? (width-2*PADD - (XRES-1)*PADD) / XRES : width-2*PADD, h = grid ? (height-2*PADD - (YRES-1)*PADD) / YRES : height-2*PADD;
  for (int i = 0; i < pop.length; i++)
  {
    pop[i].draw(x, y, w, h);
    x+=w+PADD;
    if (x+w > width)
    {
      x = PADD;
      y+= h+PADD;
    }
  }
  if (grid && frameCount % 30 == 0)
  {
    fillpopArt (aCounter);
    aCounter++;
    if (aCounter >= pop.length) aCounter = 0;
  }
}
 
String timestamp()
{
  String time, year, month, day, hour, minute, second;
 
  year = nf( year(), 4 );
  month = nf( month(), 2 );
  day = nf( day(), 2 );
  hour = nf( hour(), 2 );
  minute = nf( minute(), 2 );
  second = nf( second(), 2 );
 
  time = year + "_" + month + "_" + day + "_" + hour + "_" + minute + "_" + second;
 
  return time;
}
 
void mousePressed ()
{
  setup();
}
 

 
void fillpopArt (int id)
{
  int dir = (int) random (3);
  pop[id].randomColoredBackground();
  for (int i = 0; i < masken.length; i++) 
    pop [id].addLayer (masken[i],dir == 0 ? true : false);
}