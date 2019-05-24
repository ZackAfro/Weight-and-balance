import 'package:flutter/material.dart';
import 'package:weight_and_balance/aircraftList.dart';

class Calculator extends StatefulWidget {
  final Aircraft aircraft;

  Calculator({this.aircraft}) {
    print('[Calculator Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[Calculator Widget] createState()');
    return _CalculatorState();
  }
}

class _CalculatorState extends State<Calculator> {
  final _CalculatorForm = GlobalKey();
  final _aircraftValues = AircraftInputValues();

  @override
  void initState() {
    print('[Calculator State] initState()');
    //if (widget.aircraft.name != null) {
      //_products.add(widget.startingProduct);
    //}
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('[Calculator State] build()');
    return Container(
        child: Builder(
      builder: (context) => Form(
          key: _CalculatorForm,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Fuel'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a Fuel amount';
                  }
                },
                onSaved: (val) =>
                    setState(() => _aircraftValues.fuel = double.parse(val)),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Front Seat 1'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a value';
                  }
                },
                onSaved: (val) =>
                    setState(() => _aircraftValues.frontSeat1 = double.parse(val)),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Front seat 2'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a value';
                  }
                },
                onSaved: (val) =>
                    setState(() => _aircraftValues.frontSeat2 = double.parse(val)),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Rear seat 1'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a value';
                  }
                },
                onSaved: (val) =>
                    setState(() => _aircraftValues.rearSeat1 = double.parse(val)),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Rear seat 2'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a value';
                  }
                },
                onSaved: (val) =>
                    setState(() => _aircraftValues.rearSeat2 = double.parse(val)),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Luggage'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a value';
                  }
                },
                onSaved: (val) =>
                    setState(() => _aircraftValues.luggage = double.parse(val)),
              ),
            ],
          )),
    ));
  }
}

class AircraftInputValues {
  WeightMeasurement weightMeasurement;
  FuelMeasurement fuelMeasurement;
  double fuel;
  double frontSeat1;
  double frontSeat2;
  double rearSeat1;
  double rearSeat2;
  double luggage;

  save() {
    print('saving user using a web service');
  }
}

enum WeightMeasurement { lbs, kg }

enum FuelMeasurement { lt, usg }
