class TripComputer
{
  float   RPM;
  float gearRatio;
  float totalTravelDistance; //figure ou how start this thing, right now it will break the function
  float Speed;
  float distance;
                   
  float getcurrentSpeed(SDA data_provider)
  {
    RPM = data_provider.ReadRPM();
    gearRatio = data_provider.ReadRatio();
    float Radius = .254; //Store this somwhere else?
    
    Speed = ((RPM/60)*(1/gearRatio))*2*PI*Radius * 3.6; //This is KM/H
    return Speed;
    
  }
  float updateTotalDistance()
  {
    totalTravelDistance = totalTravelDistance + (Speed); //This is KM / H
    return totalTravelDistance;
  }
  
}
