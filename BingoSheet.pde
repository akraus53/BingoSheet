import processing.pdf.*;

String[]  names = {"Sherlock", "Deadpool \nmit Hasenohren", "Jon Snow", "Belle", "Thor", "Star Wars Tante \nmit Fleischzöpfen \nin grün oder blau", "Suicide Squad \nHarley Quinn", "Mashup-Cosplay \nmit Harley Quinn", "Destiel", "Jemand mit \nInfinity Gauntlet", "Jemand mit Pride \nFlagge und Perücke", "Connor", "Leia", "Jemand im \nBikini Cosplay", "Bodypaint, \ndas mindestens 50% \ndes körpers bedeckt", "Klassischer Zombie \n(''ich wollte nicht \nunverkleidet kommen'')", "Wasteland Cosplay \n(nicht Martin)", "Negan mit Lucille", "Anime Figur \nmit Fellschwanz \nund Ohren", "Dark Rey", "Bill, \ndas gelbe Dreieck \nvon Gravity Falls", "Gellert Grindelwald", "Aloy", "Ghostbusters", "Supergirl", "Spider-Gwen \naus ''Into the \nSpider-Verse''", "Der IT Clown \n(Pennywise)", "Captain Marvel", "Jack Sparrow", "Mera (Aquaman)", "Der 10th Doctor", "Klaus u/o Vanya \n(Umbrella Academy)", "Daenerys \nmit Drache \noder einem Ei", "Deadpool \nin nem Kleid/Rock", "Jemand im \ngleichen Kostüm \nwie man selbst)", "Amy Pond", "Jasmin (Aladdin)", "Merida", "Voldemort", "John Wick", "Frodo/Ein Hobbit", "Dumbledore", "Tardis", "Pikachu", "Freddy Mercury"};
int counter = 0;

void setup() {
  //print(names[floor(random(names.length))]);  
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  textSize(12);
  size(827, 1169, PDF, "bingo.pdf");
}


void draw() {
  background(255);
  //rect(width*0.1, height-(0.9*width), 0.8*width, 0.8*width);
  text(frameCount, 30, height-30);
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      float x = 0.1*width + i*(width*0.8)/5 + width*(0.8/10);
      float y = height-(0.9*width) + j*(width*0.8)/5 + width*(0.8/10);
      fill(255);

      rect(x, y, width*(0.8/5), width*(0.8/5));
      
      int num = (counter++ %  names.length);
      //int num = floor(random(names.length));
      fill(0);
      text((num+1) + ":\n" + names[num], x, y);
    }
  }

  PGraphicsPDF pdf = (PGraphicsPDF) g;  // Get the renderer

  // When finished drawing, quit and save the file
  if (frameCount == 4) {
    print("done");
    exit();
  } else {
    print(".");
    pdf.nextPage();  // Tell it to go to the next page
  }
}
