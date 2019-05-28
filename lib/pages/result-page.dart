import 'package:flutter/material.dart';
import 'package:weight_and_balance/models/aircraft-models.dart';
import 'package:weight_and_balance/results.dart';

class ResultsPage extends StatelessWidget {
  final AircraftResults _aircraftResults;

  ResultsPage(this._aircraftResults);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight and Balance'),
      ),
      body: Results(_aircraftResults),
    );
  }
}
