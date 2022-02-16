//MUÑECO DE NIEVE

void setup(){

size(1000,400);


}


void draw(){


//line(x1, y1, x2, y2);


strokeWeight(0);
noStroke();

//Tengo sueño








//Background
fill(#e3bda6);



rect(0,0, width,300);











noStroke();



//SOL
fill(#fcffc5);
circle(363,170,40);

fill(#FBFCD9,120);
circle(363,170,100);


fill(#FBFCD9,80);
circle(363,170,180);

fill(#FBFCD9,40);
circle(363,170,270);

fill(#FBFCD9,30);
circle(363,170,350);

fill(#FBFCD9,20);
circle(363,170,450);

fill(#FBFCD9,10);
circle(363,170,550);

fill(#FBFCD9,5);
circle(363,170,650);



//Nube 1
strokeWeight(78);
stroke(#FFFAF7,250);
line(700,80,900,80);


strokeWeight(78);
stroke(#FFFAF7,250);
line(750,50,850,50);

//Nube 2

strokeWeight(58);
stroke(#FFFAF7,250);
line(0,130,200,130);


strokeWeight(58);
stroke(#FFFAF7,250);
line(0,100,140,100);

noStroke();




//Montañas

//triangle(x1,y1,x2,y2,x3,y3); Izq - Der - UPDOWN






//Montaña 1
fill(255,129,78);
triangle(330,250,500,250,400,150);

fill(#EDA981);
triangle(450,250,500,250,400,150);



//Montaña 2
fill(255,129,78);
triangle(0,300,190,400,50,130);


fill(#EDA981);
triangle(80,300,190,400,50,130);



//Montaña 3
fill(120,0,18);
triangle(0,300,150,300,75,180);

fill(120,0,18);
triangle(50,300,350,300,150,100);


fill(#D85E77);
triangle(100,200,150,300,75,180);

fill(#D85E77);
triangle(225,300,350,300,150,100);





//Montaña 4
fill(255,129,78);
triangle(700,250,850,250,785,135);

fill(#eda981);
triangle(700,250,740,250,785,135);



//Montaña 5
fill(98,8,44);
triangle(70,350,470,350, 270, 70);

fill(#bc574c);
triangle(380,350,470,350, 270, 70);




//Montaña 6
fill(126,3,50);
triangle(750,300,980,300,850,150);


fill(#763341);
triangle(750,300,690,300,850,150);




//Montaña 7
fill(#530030);
triangle(400,300,800,300,600,120);


fill(#bc574c);
triangle(400,300,500,300,600,120);


//Montaña 8
fill(66,0,38);
triangle(150,400,600,400,459,140);

fill(#bc574c);
triangle(250,300,300,300,459,140);




//Montaña 9
fill(66,0,38);
triangle(400,400,1000,400,700,130);

fill(#bc574c);
triangle(400,400,550,400,700,130);



//Montaña 10
fill(46,17,45);
triangle(800,300,1000,300,1000,122);

fill(#bc574c);
triangle(800,300,800,300,1000,122);







stroke(#360218);
line(0,300,1000,300);

//Nube 3
strokeWeight(78);
stroke(#FFFAF7,200);
line(1000,200,800,200);


strokeWeight(78);
stroke(#FFFAF7,230);
line(1000,250,870,250);



noStroke();





fill(#D3E4E8);


//SUELO
fill(#D7F7FA);
rect(0,280, width, 150);

fill(255);
quad(220,280, 280,280 ,160,400 ,100,400);

fill(255);
quad(350,280, 450,280 ,350,400 ,250,400);


fill(255);
quad(550,280, 650,280 ,750,400 ,650,400);


fill(255);
quad(800,280, 860,280 ,960,400 ,900,400);













fill(255);


strokeWeight(1);


//circle(x, y, diam);

//Brazos
strokeWeight(5);
stroke(#2E2722);
line(433,170,330,220);
line(567,170,670,220);
//Dedos XD
line(330,220,325,250);
line(330,220,320,207);

line(670,220,675, 250);
line(670,220,677, 207);

strokeWeight(1);
stroke(#000000);




//Cuerpo
stroke(#4E5A5A);
//Cir Culo
circle(500,300,180);
//Circulo torso
circle(500,200,150);
//Cabeza
circle(500,117,120);

stroke(0);
//Nariz
fill(#FCA042);
// 1. IZQUIERDA 2. DERECHA 3. ABAJO
//triangle( x1, y1, x2, y2, x3, y3);
triangle(490, 130, 510, 130, 500, 140);

//Ojos
fill(#000000);
circle(475,110,13);
circle(525,110,13);

//Luces de los ojos
fill(#FFFFFF);
circle(472,110,5);
circle(522,110,5);

//Sombrero
fill(#000000);
quad(470,20,530,20, 530,70, 470,70);
quad(450,60,550,60, 550,70, 450,70);
fill(#DB5050);
quad(470,50, 530,50, 530,60, 470,60);

//Rubor
noStroke();
strokeWeight(0);
fill(#F7C3E2,130);
circle(470,127,20);
circle(530,127,20);

//Bokita el mas grande
fill(#000000);
circle(478,145,6);
circle(488,150,6);
circle(498,152,6);
circle(508,152,6);
circle(518,150,6);
circle(528,145,6);

//Botones
fill(#891601);
circle(500,190,12);
circle(500,210,12);
circle(500,230,12);


//COPOS DE NIEVE
fill(255);
circle(100,30,6);
circle(254,125,6);
circle(562,341,6);
circle(832,30,6);
circle(810,312,6);
circle(300,123,6);
circle(251,326,6);
circle(600,128,6);
circle(412,284,6);
circle(346,231,6);
circle(756,328,6);
circle(145,213,6);
circle(562,321,6);
circle(612,156,6);
circle(233,245,6);
circle(421,267,6);
circle(312,57,6);
circle(344,287,6);


}
