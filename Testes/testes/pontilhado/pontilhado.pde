// declaracao das variaveis
PImage img;
int smallPoint;

void setup()
{
  //declaracao do tamnho
  size(600,412);
  // img vai receber a imagem da pasta
  img = loadImage("imagem.bmp");
  //tamnho do ponto, vc pode alterar essa variavel para ter pontos menores ou maiores para um resultado mais complexo ou mais simples com o pontilhismo
  smallPoint = 5;
  //tirar a linha de contorno dos pontos
  noStroke();
  background(255); //colocando o fundo branco
  frameRate(600);
}

void draw()
{
  //funcao de fazer os pontos em cantos randoms
  float pointillize = map( 0, 0, width, smallPoint, smallPoint);
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pix = img.get(x, y);
   fill(pix, 100);
   ellipse(x, y, pointillize, pointillize);

}