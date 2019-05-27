import 'package:flutter/material.dart';
import 'package:weight_and_balance/calculator.dart';
import 'package:weight_and_balance/aircraftList.dart';

class CalculatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight and Balance'),
      ),
      body: Calculator(),
    );
  }
}
