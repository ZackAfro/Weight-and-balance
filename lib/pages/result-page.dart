import 'package:flutter/material.dart';
import 'package:weight_and_balance/calculator.dart';
import 'package:weight_and_balance/results.dart';

class ResultsPage extends StatelessWidget {
  final AircraftInputValues _aircrafInputValues;

  ResultsPage(this._aircrafInputValues) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight and Balance'),
      ),
      body: Results(_aircrafInputValues),
    );
  }
}
