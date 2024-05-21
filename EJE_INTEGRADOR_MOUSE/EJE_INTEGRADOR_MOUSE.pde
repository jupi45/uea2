PImage img1, img2, img3, img4, img5, img6;
float img1X, img1Y, img2X, img2Y, img3X, img3Y,img4X, img4Y,img5X, img5Y,img6X, img6Y;

void setup() {
  fullScreen();
  img1 = loadImage("../assets/image1.png");
  img2 = loadImage("../assets/image2.jpg");
  img3 = loadImage("../assets/image3.jpg");
  img4 = loadImage("../assets/image4.png");
  img5 = loadImage("../assets/image5.jpg");
  img6 = loadImage("../assets/image6.png");
  img1X = width/2 - img1.width/2;
  img1Y = height/1 - img1.height/2;
  img2X = width/9 - img2.width/2;
  img2Y = height/7 - img2.height/2;
  img3X = width/5 - img3.width/2;
  img3Y = height/6 - img3.height/2;
  img4X = width/3 - img4.width/2;
  img4Y = height/8 - img4.height/2;
  img5X = width/2 - img5.width/2;
  img5Y = height/2 - img5.height/2;
  img6X = width/3 - img6.width/2;
  img6Y = height/2 - img6.height/2;
}

void draw() {
  background(255);
  image(img1, img1X, img1Y);
  image(img2, img2X, img2Y);
  image(img3, img3X, img3Y);
  image(img4, img4X, img4Y);
  image(img5, img5X, img5Y);
  image(img6, img6X, img6Y);
}

void mouseDragged() {
  if (mouseX > img1X && mouseX < img1X + img1.width && mouseY > img1Y && mouseY < img1Y + img1.height) {
    img1X = mouseX - img1.width/2;
    img1Y = mouseY - img1.height/2;
  } else if (mouseX > img2X && mouseX < img2X + img2.width && mouseY > img2Y && mouseY < img2Y + img2.height) {
    img2X = mouseX - img2.width/2;
    img2Y = mouseY - img2.height/2;
  } else if (mouseX > img3X && mouseX < img3X + img3.width && mouseY > img3Y && mouseY < img3Y + img3.height) {
    img3X = mouseX - img3.width/2;
    img3Y = mouseY - img3.height/2;
  } else if (mouseX > img4X && mouseX < img4X + img4.width && mouseY > img4Y && mouseY < img4Y + img4.height) {
    img4X = mouseX - img4.width/2;
    img4Y = mouseY - img4.height/2;
  } else if (mouseX > img5X && mouseX < img5X + img5.width && mouseY > img5Y && mouseY < img5Y + img5.height) {
    img5X = mouseX - img5.width/2;
    img5Y = mouseY - img5.height/2;
  } else if (mouseX > img6X && mouseX < img6X + img6.width && mouseY > img6Y && mouseY < img6Y + img6.height) {
    img6X = mouseX - img6.width/2;
    img6Y = mouseY - img6.height/2;

  }
}
