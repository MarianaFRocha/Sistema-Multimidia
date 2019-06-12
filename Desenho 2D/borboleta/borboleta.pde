//tela fundo
size(800, 700);
background(190, 200, 206);


//asas

//asa esquerda baixa

strokeWeight(10);
stroke(0);
ellipseMode(CENTER);
fill(64, 210, 109);

ellipse(110, 435, 120, 230);

beginShape();
vertex( 90, 320);
vertex(405,300);
vertex(120, 550);
endShape();


//Particao da asa esquerda

noStroke();
fill(121, 204, 250);// Azul claro

ellipse(80, 455, 50, 100);

strokeWeight(5);
stroke(0);
beginShape();
vertex( 55, 400);
vertex(405,300);
vertex(70, 520);
endShape();

fill(53, 128, 170);
quad(100, 390, 140, 378, 170, 453, 120, 485);

quad(210, 358, 290, 333, 300, 370, 235, 410);


//asa esquerda

strokeWeight(10);
stroke(0);
ellipseMode(CENTER);
fill(242, 103, 79);
ellipse(80, 235, 120, 230);

strokeWeight(10);
stroke(0);

beginShape();
vertex( 80, 350);
vertex(405,300);
vertex(85, 120);
endShape();





//asa direita baixa

strokeWeight(10);
stroke(0);
ellipseMode(CENTER);
fill(247, 255, 46);

ellipse(700, 435, 120, 230);

beginShape();
vertex( 700, 320);
vertex(405,300);
vertex(690, 550);
endShape();


//Particao da asa direita

noStroke();
fill(255, 255, 255);// branco

ellipse(735, 445, 50, 100);

strokeWeight(5);
stroke(0);
beginShape();
vertex( 755, 400);
vertex(405,300);
vertex(745, 500);
endShape();

strokeWeight(3);
stroke(0);
fill(0, 0, 0);
ellipse(665,430, 35, 35);
ellipse(720,415, 35, 35);
ellipse(730,465, 35, 35);
ellipse(610,390, 35, 35);
ellipse(655,390, 25, 25);
ellipse(535,355, 60, 60);


line(630, 450, 560, 420);
line(650, 470, 660, 457);
line(639, 465, 643, 467);
line(700, 477, 710, 535);
line(603, 480, 670, 477);
line(690, 490, 690, 497);
line(680, 510, 640, 500);

//asa direita

strokeWeight(10);
stroke(0);
ellipseMode(CENTER);
fill(53, 128, 170);
ellipse(700, 235, 120, 230);

strokeWeight(10);
stroke(0);

beginShape();
vertex(700, 350);
vertex(405,300);
vertex(695, 120);
endShape();

//detalhes direita

//retangulo 1
strokeWeight(5);
stroke(0);

fill(121, 204, 250);// Azul claro
quad(570, 205, 500, 245, 500, 315, 570, 325);

//retangulo 2
strokeWeight(5);
stroke(0);

fill(121, 204, 250);// Azul claro
quad(680, 130, 630, 165, 660, 340, 745, 305);
noStroke();
ellipse(698,305, 83, 88);



//triangulo direito

strokeWeight(6);
stroke(0);
ellipseMode(CENTER);
fill(242, 103, 79);

triangle(535, 270, 670, 190, 700, 300);

strokeWeight(3);
stroke(0);
fill(242, 23, 23);
ellipse(660,225, 35, 35);

beginShape();
vertex(690, 265);
vertex(700, 300);
vertex(660,293);
endShape();

beginShape();
bezier(660,293, 680, 265, 680, 270, 690, 265);
endShape();

ellipse(610,265, 35, 35);


//detalhes esquerda

strokeWeight(3);
stroke(0);
fill(242, 23, 23);
ellipse(165, 200, 45, 45);
ellipse(125, 300, 45, 45);
ellipse(55, 190, 50, 50);
ellipse(105, 260, 45, 45);
ellipse(225, 290, 45, 45);
ellipse(105, 150, 30, 30);
ellipse(55, 290, 40, 40);
ellipse(230, 230, 40, 40);

beginShape();
vertex(305, 250);
vertex(395,300);
vertex(305, 315);
endShape();

beginShape();
bezier(305, 250, 295, 290, 295, 290, 305, 315);
endShape();


//triangulo esquerdo

strokeWeight(6);
stroke(0);
fill(248, 252, 38);

triangle(235, 270, 110, 190, 100, 300);


strokeWeight(6);
stroke(0);
fill(230, 200, 222); //lilas

triangle(135, 208, 110, 190, 105, 240);

quad(185, 240, 170, 230, 130, 290, 180, 280);


//Atenas

//Atena direita

strokeWeight(6);
stroke(0);
line(535, 100, 395,300);

strokeWeight(10);
stroke(0);
fill(153, 51, 153); //roxo
ellipse(535, 100, 50, 50);


//Atena esquerda

strokeWeight(6);
stroke(0);
line(265, 100, 395,300);


fill(0, 0, 0); 
ellipse(265, 100, 50, 50);


//Corpo

noStroke();
fill(153, 51, 153); //roxo
ellipse(395,340, 100, 200);

strokeWeight(5);
noStroke();
fill(230, 200, 222); //lilas
ellipse(395,340, 100, 65);

//Corpo - meio
strokeWeight(5);
stroke(0);
fill(230, 200, 222);
beginShape();
bezier(445, 320, 330, 270, 340, 390, 345, 345);
bezier(440, 320, 480, 380, 340, 400, 345, 340);
endShape();

//Corpo - contorno
strokeWeight(10);
stroke(0);
noFill();
ellipse(395,340, 100, 200);