PImage img;

void setup() {
  size(600, 600);

  img = loadImage("carpet.jpeg");
  img.resize(width, 0);
  //img.filter(GRAY);
}

void draw() {
  background(0);

  int tilesX = 32;
  int tilesY = 18;

  int tileW = int(width/tilesX);
  int tileH = int(height/tilesY);

  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {

      int waveX = int(map(tan(radians(frameCount + x * 2 + y * 2)), -1, 1, -100, 100));

      int sx = x * tileW;
      int sy = y * tileH;
      int sw = tileW;
      int sh = tileH;

      int dx = sx + waveX;
      int dy = sy;
      int dw = tileW;
      int dh = tileH;

      copy(img, sx, sy, sw, sh, dx, dy, dw, dh);
    }
  }
}
