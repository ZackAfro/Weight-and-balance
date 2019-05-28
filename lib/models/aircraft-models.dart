class AircraftInputValues {
  WeightMeasurement weightMeasurement;
  FuelMeasurement fuelMeasurement;
  double _grossWeight = 1452.15;
  double _fuel;
  double _frontSeat1;
  double _frontSeat2;
  double _rearSeat1;
  double _rearSeat2;
  double _luggage;

  double get grossWeight => _grossWeight;
  double get fuel => _fuel;
  double get frontSeat1 => _frontSeat1;
  double get frontSeat2 => _frontSeat2;
  double get rearSeat1 => _rearSeat1;
  double get rearSeat2 => _rearSeat2;
  double get luggage => _luggage;

  set grossWeight(grossWeight) =>
    _grossWeight = grossWeight;

  set fuel(fuel) =>
    _fuel = fuel;

  set frontSeat1(frontSeat1) =>
    _frontSeat1 = frontSeat1;

  set frontSeat2(frontSeat2) =>
    _frontSeat2 = frontSeat2;
  
  set rearSeat1(rearSeat1) =>
    _rearSeat1 = rearSeat1;
  
  set rearSeat2(rearSeat2) =>
    _rearSeat2 = rearSeat2;
  
  set luggage(luggage) =>
    _luggage = luggage;
  
}

enum WeightMeasurement { lbs, kg }

enum FuelMeasurement { lt, usg }

class AircraftArmValues{
  
  double aircraftEmpty = 38.89;
  double fuel = 46;
  double frontSeat = 37;
  double rearSeat = 73;
  double luggage = 95;
}

class AircraftItemRow{

  String item;
  double weight; 
  double arm;
  double moment;

  AircraftItemRow({this.item, this.weight, this.arm, this.moment});
}

class AircraftResults{
  List<AircraftItemRow> items = [];
  double totalWeight = 0;
  double totalMoment = 0;
}
