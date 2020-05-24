Speed_Display display;

PFont txtfont, txtfont1;

SDA data_provider = new SDA();
boolean keypress=false;
int userselect;
int curindex=0;


void setup() {

  size(700, 700);
  background(0);
  txtfont = createFont("digital-7.ttf", 5 ) ; 
  txtfont1= loadFont("OCRAExtended-48.vlw");

  display = new Speed_Display();
}

void draw() {
  //menu
  if (keypress==false) {
    display.menu();
  }
  if (keyPressed) {
    keypress=true;

    if (key=='1') {
      userselect=1;
    }

    if (key=='2') {
      userselect=2;
    }

    if (key=='3') {		
      exit();
    }
  }
  if (keypress==true) {
    if (userselect==2) {
      if (curindex==0) {
        clear();
        data_provider.initialize(userselect);//loads the data into the table
      }
      display.Dashboard(userselect);
      display.ShowMeSpeed(data_provider);
      noLoop();
      delay(500);
      redraw();
      loop();
      ++curindex;
      if (curindex>=599) {//ending condition
        curindex=0;
        data_provider.currentIndex=0;
        userselect=0;
        keypress=false;
        clear();
      }
    }
    if (userselect==1) {
      if (curindex==0) {
        clear();
        data_provider.initialize(userselect);//loads the data into the table
      }
      display.Dashboard(userselect);
      display.ShowMeSpeed(data_provider);
      noLoop();
      delay(500);
      redraw();
      loop();
      ++curindex;
      if (curindex>=599) {//ending condition
        curindex=0;
        data_provider.currentIndex=0;
        userselect=0;
        keypress=false;
        clear();
      }
    }
  }
}
