import 'package:flutter/material.dart';
import 'package:weight_and_balance/calculator.dart';
import 'package:weight_and_balance/aircraftList.dart';

class Results extends StatefulWidget {
  final AircraftInputValues _aircraftInputValues;

  Results(this._aircraftInputValues) {
    print('[Calculator Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[Calculator Widget] createState()');
    return _ResultsState();
  }
}

class _ResultsState extends State<Results> {
  var _aircraftValues = new AircraftInputValues();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
      ),
    );
  }
}