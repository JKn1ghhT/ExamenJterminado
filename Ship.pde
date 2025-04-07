class Player extends GameObject{

  Player(String image, Vector2 initPos)
  {
    super(image, initPos);
  }

  void ProcessInput() {
    if (keyPressed) {
        if (key == 'w' || key == 'W'){
          
          println (transform.rotation);
          float angleInRadians = radians (transform.rotation -90);
          Vector2 forward = new Vector2 (cos(angleInRadians), sin(angleInRadians));
          println(forward.x + " " + forward.y);
          transform.Translate(forward);
        }
        // Rotación a la izquierda de la navecita 
        if (key == 'a'||key == 'A') {
            transform.Rotate(-5); // Ajusta la velocidad en la que rota la navecita 
        }
        // Rotación a la derecha de la navecita 
        if (key == 'd' || key == 'D') {
            transform.Rotate(5); // Ajusta la velocidad en la que rota la navecita 
        }
        if (key == 'q'|| key == 'Q') {
        bullets.add(new Bullet("small.png", new Vector2 (transform.position.x, transform.position.y),transform.rotation));
        }
    }
}

}
