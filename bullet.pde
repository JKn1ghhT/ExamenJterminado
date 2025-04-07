class Bullet extends GameObject{
float speed = 20; //Velocidad a la que va a ser disparada la bala 

Bullet (String image, Vector2 initPos,float rotation){
super (image, initPos);
transform.rotation = rotation;


}
void Update(){

Vector2 forward = new Vector2(cos(radians(transform.rotation-90)), sin(radians(transform.rotation-90)));
forward.mult(speed);
transform.Translate(forward);

}

boolean IsOffScreen(){

return transform.position.x < 0 || transform.position.x > width || transform.position.y < 0 || transform.position.y > height;
}

void Display (){
fill (#F700D7);
noStroke();
rectMode(CENTER);
rect(transform.position.x, transform.position.y, 20, 30);
 }
}
