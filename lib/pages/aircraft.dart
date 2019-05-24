import 'package:flutter/material.dart';
import 'package:weight_and_balance/aircraftList.dart';

class AircraftPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight and Balance'),
      ),
      body: AircraftList(),
    );
  }
}
