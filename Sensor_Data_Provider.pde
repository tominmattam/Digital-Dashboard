class SDA
{
  String truckPath = "car_status_Truck_F150.csv";    //It just need some improvemnt:)
  String BMWPath = "car_status_BMW_323i.csv";    //It just need some improvemnt:)
  int currentIndex = 0;
  Table dataTable;
  TableRow curRow; //initializing the row
  
  
void initialize(int car)  //wasn't this already loaded at line 4?.. Keep one of them
{
	if (car==2){
  		dataTable = loadTable(truckPath, "header");
	}
	else if (car==1){
  		dataTable = loadTable(BMWPath, "header");
	}
}

void readNext()  //Unused method?
{
    //for(int i=0;i<dataTable.getRowCount();i++){
      System.out.println("total rowCount = " + dataTable.getRowCount()); 
    if (currentIndex<dataTable.getRowCount()){
      curRow=dataTable.getRow(currentIndex);
      //curRow=dataTable.getRow(i);
      System.out.println("The row index is: " + currentIndex);
      System.out.println("Gear ration of this row: " +curRow.getInt("Gear Ratio"));
      ++currentIndex;
    }
    //}
  /*
  if(currentIndex < dataTable.getRowCount()) //assuming that you want to loop the entire table
  currentIndex++;
  row.addRow(dataTable.getRow(currentIndex));
  */
}

float ReadRPM()
{
  float RPM = curRow.getFloat("RPM");
  return RPM;
}
float ReadFuelLevel()
{
  float FuelLevel = curRow.getFloat("Fuel Level (liter)");
  return FuelLevel;
}
float ReadRatio()
{
  float Ratio = curRow.getFloat("Gear Ratio");
  return Ratio;
}
float ReadX()
{
  float X = curRow.getFloat("X");
  return X;
}
float ReadY()
{
  float Y = curRow.getFloat("Y");
  return Y;
}




//Float RPM;        //Global Variables
//Float FuelLevel;
//Float Ratio;
//Float X;
//Float Y;



}


//String filePath = "car_status_Truck_F150.csv";
//Table dataTable = loadTable(filePath, "header");
//TableRow row;
//int currentIndex = 0;
// read RPM from first row of the data
//row = dataTable.getRow(currentIndex);
//println("RPM : " + row.getInt("RPM"));
//currentIndex ++;
// read X and Y from the second row of the data
//row = dataTable.getRow(currentIndex);
//println("X : " + row.getFloat("X") + " Y : " +
//row.getFloat("Y"));
