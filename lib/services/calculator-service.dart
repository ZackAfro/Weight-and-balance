import 'package:weight_and_balance/models/aircraft-models.dart';

class CalculatorService{

  AircraftResults calculateWeightandBalance(AircraftInputValues aircraftInputValues){
    AircraftResults results = new AircraftResults();
    AircraftArmValues armValues = new AircraftArmValues();



    if (aircraftInputValues.weightMeasurement == WeightMeasurement.kg){
      print("in if of KG");
      aircraftInputValues.frontSeat1 *= 2.2;
      aircraftInputValues.frontSeat2 *= 2.2;
      aircraftInputValues.rearSeat1 *= 2.2;
      aircraftInputValues.rearSeat2 *= 2.2;
      aircraftInputValues.luggage *= 2.2;
    }

    if (aircraftInputValues.fuelMeasurement == FuelMeasurement.lt){
      aircraftInputValues.fuel = (aircraftInputValues.fuel*0.264172) * 6;
    } else {
      aircraftInputValues.fuel *= 6;
    }

    // Calculate moments and save it in the results objects as rows for later use in a table
    results.items.add(createAircraftItemRow("Empty plane", aircraftInputValues.grossWeight, armValues.aircraftEmpty));
    results.items.add(createAircraftItemRow("Fuel", aircraftInputValues.fuel, armValues.fuel));
    results.items.add(createAircraftItemRow("Front seats", aircraftInputValues.frontSeat1 + aircraftInputValues.frontSeat2 , armValues.frontSeat));
    results.items.add(createAircraftItemRow("Rear seats", aircraftInputValues.rearSeat1 + aircraftInputValues.rearSeat2, armValues.rearSeat));
    results.items.add(createAircraftItemRow("Luggage", aircraftInputValues.luggage, armValues.luggage));

    for (var item in results.items) {
      results.totalWeight += item.weight;
      results.totalMoment += item.moment;
    }
    
    return results;
  }

  AircraftItemRow createAircraftItemRow(item, weight, arm){
    return  new AircraftItemRow(item: item, weight: weight, arm: arm, moment: weight * arm);
  }
} 