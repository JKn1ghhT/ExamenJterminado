Player ship;
ArrayList<GameObject> drawables = new ArrayList<GameObject>();
Bullet balas;
ArrayList<Bullet> bullets = new ArrayList <Bullet> (); // Lista de las balas

void setup()
{
  size(1024, 768); //para el tamaño del player
  ship = new Player("ship.png", new Vector2(512, 384));//de aqui saca el sprite para el player
}

void draw() {
  background(0); // Color de el fondo de nuestra ventana 
  ship.ProcessInput();
     for (int i = bullets.size() - 1; i >= 0; i--){
   Bullet b = bullets.get (i);
   b.Update (); // Movimiento de la bala
   b.Display(); // Dibujo de la bala 
   
   if (b.IsOffScreen()) {
   bullets.remove(i);
   }
  }
  
  for (GameObject go: drawables){
    go.Display();
  }
}
  
   
  
