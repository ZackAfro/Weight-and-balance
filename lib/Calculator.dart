import 'package:flutter/material.dart';
import 'package:weight_and_balance/aircraft-list.dart';
import 'package:weight_and_balance/models/aircraft-models.dart';
import 'package:weight_and_balance/pages/result-page.dart';
import 'package:weight_and_balance/services/calculator-service.dart';

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
  final _calculatorForm = GlobalKey<FormState>();
  AircraftInputValues _aircraftValues = new AircraftInputValues();
  CalculatorService service = new CalculatorService();

  @override
  void initState() {
    _aircraftValues.fuelMeasurement = FuelMeasurement.usg;
    _aircraftValues.weightMeasurement = WeightMeasurement.kg;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Builder(
          builder: (context) => Form(
              key: _calculatorForm,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Massure fuel in :"),
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Expanded(
                          child: new RadioListTile(
                            groupValue: _aircraftValues.fuelMeasurement,
                            title: new Text("Liters"),
                            value: FuelMeasurement.lt,
                            onChanged: (FuelMeasurement value) {
                              setState(() {
                                _aircraftValues.fuelMeasurement = value;
                              });
                            },
                          ),
                        ),
                        new Expanded(
                          child: new RadioListTile(
                            groupValue: _aircraftValues.fuelMeasurement,
                            title: new Text("US Gallons"),
                            value: FuelMeasurement.usg,
                            onChanged: (FuelMeasurement value) {
                              setState(() {
                                _aircraftValues.fuelMeasurement = value;
                              });
                            },
                          ),
                        ),
                      ]),
                  Divider(),
                  Text("Massure weight in :"),
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Expanded(
                          child: new RadioListTile(
                            groupValue: _aircraftValues.weightMeasurement,
                            title: new Text("Pounds"),
                            value: WeightMeasurement.lbs,
                            onChanged: (WeightMeasurement value) {
                              setState(() {
                                _aircraftValues.weightMeasurement = value;
                              });
                            },
                          ),
                        ),
                        new Expanded(
                          child: new RadioListTile(
                            groupValue: _aircraftValues.weightMeasurement,
                            title: new Text("Kilograms"),
                            value: WeightMeasurement.kg,
                            onChanged: (WeightMeasurement value) {
                              setState(() {
                                _aircraftValues.weightMeasurement = value;
                              });
                            },
                          ),
                        ),
                      ]),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Fuel '),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter a Fuel amount';
                      }
                    },
                    onSaved: (val) => setState(
                        () => _aircraftValues.fuel = double.parse(val)),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Front Seat 1 '),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter a value';
                      }
                    },
                    onSaved: (val) => setState(
                        () => _aircraftValues.frontSeat1 = double.parse(val)),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Front seat 2'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter a value';
                      }
                    },
                    onSaved: (val) => setState(
                        () => _aircraftValues.frontSeat2 = double.parse(val)),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Rear seat 1'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter a value';
                      }
                    },
                    onSaved: (val) => setState(
                        () => _aircraftValues.rearSeat1 = double.parse(val)),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Rear seat 2'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter a value';
                      }
                    },
                    onSaved: (val) => setState(
                        () => _aircraftValues.rearSeat2 = double.parse(val)),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Luggage'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter a value';
                      }
                    },
                    onSaved: (val) => setState(
                        () => _aircraftValues.luggage = double.parse(val)),
                  ),
                  new RaisedButton(
                    onPressed: () {
                      final form = _calculatorForm.currentState;
                      if (form.validate()) {
                        form.save();
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => ResultsPage(service.calculateWeightandBalance(_aircraftValues)),
                        ),
                      );
                      }
                    },
                    child: Text('Calculate', style: TextStyle(fontSize: 20)),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}