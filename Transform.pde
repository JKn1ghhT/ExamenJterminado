class Transform{
  
  
  Vector2 position = new Vector2();
  float rotation; // rotacion de la navecita 
  
  Vector2 scale = new Vector2(1,1);

  void Translate(Vector2 dist){
    position.x += dist.x; //Esto hace que cambie la rotacion en el eje x
    position.y += dist.y; // Esto hace que se cambie la rotacion en eje y
  } 

  void Rotate(float degrees){
    float tempRotation = rotation + degrees  % 360;
    rotation =  tempRotation >= 0 ? tempRotation : (360 + tempRotation);
  }

Transform (){
 position = new Vector2(0,0);
 rotation = 0;
 scale = new Vector2 (1,1);

 }
}
