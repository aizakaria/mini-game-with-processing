float x=400;//coordonnées de translation
float y;
float z;

Box box;
void setup(){
size(800,500,P3D);
background(0);
box = new Box();
}
void draw(){
background(0);
box.show();
box.moveBox();
}
