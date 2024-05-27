PImage fondo;
PImage[] imagenes = new PImage[5];
float[] x = new float[5];
float[] y = new float[5];
boolean[] arrastrando = new boolean[5];

void setup() {
  size(800, 600);
  fondo = loadImage("fondo.jpg");
  imagenes[0] = loadImage("imagen1.png");
  imagenes[1] = loadImage("imagen2.jpg");
  imagenes[2] = loadImage("imagen3.jpg");
  imagenes[3] = loadImage("imagen4.png");
  imagenes[4] = loadImage("imagen5.png");
  
  for (int i = 0; i < imagenes.length; i++) {
    x[i] = random(width - imagenes[i].width);
    y[i] = random(height - imagenes[i].height);
    arrastrando[i] = false;
  }
}

void draw() {
  background(fondo);
  
  for (int i = 0; i < imagenes.length; i++) {
    image(imagenes[i], x[i], y[i]);
  }
}

void mousePressed() {
  for (int i = 0; i < imagenes.length; i++) {
    if (mouseX > x[i] && mouseX < x[i] + imagenes[i].width && mouseY > y[i] && mouseY < y[i] + imagenes[i].height) {
      arrastrando[i] = true;
    }
  }
}

void mouseDragged() {
  for (int i = 0; i < imagenes.length; i++) {
    if (arrastrando[i]) {
      x[i] = mouseX - imagenes[i].width / 2;
      y[i] = mouseY - imagenes[i].height / 2;
    }
  }
}

void mouseReleased() {
  for (int i = 0; i < imagenes.length; i++) {
    arrastrando[i] = false;
  }
}
