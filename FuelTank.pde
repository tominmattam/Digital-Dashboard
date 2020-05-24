class FuelTank
{
  float TankCapacity;  //This might be an int
  float FuelLevel;

/*
based on the fuel level, and capacity of the tank, calculate the REMAINING FUEL
*/
float getConsumedFuel()
{
  return 57;
  
}

}
/*
FuelEconomy (km/l)= DistanceTraveled(km) / Consumed Fuel(l)
Range (km) = AverageFuelEconomy*RemainingFuel (l)
FuelConsumption (l) = 1/ AverageFuelEconomy(km/l) *100(km)

minicar: wheel radius 23cm, tank capacity 60 liters
truck: wheel radius 25.4cm, tank capacity 80 liters
*/
