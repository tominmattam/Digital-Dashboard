class Speed_Display
{
	
  TripComputer calculateTrip = new TripComputer();
  float curSpeed;
  float curRPM;
  float curFuelLevel;
  void ShowMeSpeed(SDA data_provider)
  {
	/*	change the font
	PFont font;
	font = createFont("LetterGothicStd.ttf", 32);	
	textFont(font);
	*/
	//for (int i=0;i<data_provider.dataTable.getRowCount();++i){
    data_provider.readNext();
    curSpeed = calculateTrip.getcurrentSpeed(data_provider);
    //text(curSpeed, 130, 270);
    textFont(txtfont);
	textSize(25);
    text(curSpeed, 62.5, 200);
    curRPM = data_provider.ReadRPM();
    //text(curRPM, 440, 270);
	textSize(25);
    text(curRPM, 307.5, 200);
    curFuelLevel = data_provider.ReadFuelLevel();
    //text(curFuelLevel, 730, 270);
	textSize(25);
    text(curFuelLevel, 561.5, 200);
	//}
    //data_provider.currentIndex;r    System.out.println(data_provider.currentIndex);
    //System.out.println("Im here");
 }

void Dashboard(int car)
{

  	data_provider.initialize(car);//loads the data into the table
	//3 circles for speedometer
    fill(1000, 1000, 1000);
    ellipse(100, 190, 190, 190);
    fill(0);
    ellipse(100, 190,180, 180);
    
    fill(1000, 1000, 1000);
    ellipse(350, 190, 190, 190);
    fill(0);
    ellipse(350, 190, 180, 180);
    
    fill(1000, 1000, 1000);
    ellipse(600, 190, 190, 190);
    fill(0);
    ellipse(600 , 190, 180, 180);
  	//direction
    fill(1000, 1000, 1000);
    ellipse(350, 45, 80, 80);
    fill(0);
    ellipse(350 , 45, 70, 70);

fill(1000, 1000, 1000);
textFont(txtfont1) ; 
textSize(12);
fill(0, 255, 51) ; 
text("SPEED (KM/H)", 70, (190+135));
text("RPM", 332, (190+135));
text("FUEL (LITER)", 575, (190+135));

}

void menu(){
fill(color(0,255 , 51 ));//gray color
noStroke();
rect(150,250,450,180);

fill(color(0,0,0));//white color
noStroke();
rect(165,255,420,165);

fill(color(0 , 251 , 51 ));//black color
textFont(txtfont1) ; 
textSize(15);
text("Please press one of the following numbers:", 200,270);
text("1. Minicar", 230,310);
text("2. Truck", 230,350);
text("3. Quit the program", 230,390);
}
}
