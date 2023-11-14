class Box{
  //vecteurs des box et de la sphere
  PVector v;
  PVector v1;
  PVector v2;
  
  //coordonnées cube bleu
  float x1 = 300;
  float y1 = height/2;
  float z1 = -1600;
  
  //coordonnées cube rouge
  float x2 = 500;
  float y2 = height/2;
  float z2 = -3100; 
   
   float score = 0;
   
  void moveBox()
  {
    z1 =z1+4;
    z2=z2+4;
    
    if(z1==300)
    {
    z1 = -1600;
    x1 = random(250,550);
    }
   if(z2==500)
    {
   z2 = -3100;
   x2= random(250,550);
    }     
}
void show()
  {
////////////////////////////////// blue box 
lights();
pushMatrix();
noStroke();
v1 = new PVector(x1,y1,z1);
stroke(255);
//line(x1,y1,500,v1.x,v1.y,v1.z);
translate(x1, y1, z1);
noStroke();
fill(10, 98, 240);
rotateX(frameCount / 150.0);
rotateY(frameCount / 150.0);
rotateZ(frameCount / 150.0);
box(40);
popMatrix();

////////////////////////////////// red box 
lights();
pushMatrix();
noStroke();
PVector v2 = new PVector(x2,y2,z2);
stroke(255);
//line(x2,y2,500,v2.x,v2.y,v2.z);
translate(x2,y2, z2);
noStroke();
fill(255, 25, 0);
rotateX(frameCount / 150.0);
rotateY(frameCount / 150.0);
rotateZ(frameCount / 150.0);
box(40);
popMatrix();

//////////////////////////////// sphere
lights();
pushMatrix();
noStroke();
PVector v = new PVector(x,y,z);
stroke(255);
//line(x,y,z,v.x,v.y,v.z);
translate(x,height/2,0);
noStroke();
fill(12, 247, 81);
move();
sphere(40);
popMatrix(); 

float distBlue = v.dist(v1);
float distRed = v.dist(v2);
//condition qui detecte la collision entre la sphere et les deux cubes
//250.83026
    if(distBlue<250.05100)
     {
       score=score+1;
    println("touché, score :",score);
     }
  else if(distRed < 260.00)
  {
    println("you loose");
    exit();
  }
}

void move(){ //La fonction qui va nous permettre de deplacer la sphere
if(keyPressed==true){
  if(keyCode == RIGHT){
    x = x + 5;
  }
  if(keyCode == LEFT){
    x = x - 5;
  }
 }      
}

}
