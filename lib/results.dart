import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:weight_and_balance/models/aircraft-models.dart';

class Results extends StatefulWidget {
  final AircraftResults _aircraftResults;

  Results(this._aircraftResults) {}

  @override
  State<StatefulWidget> createState() {
    return _ResultsState(_aircraftResults);
  }
}

class _ResultsState extends State<Results> {
  AircraftResults _aircraftResults;

  _ResultsState(this._aircraftResults) {}

  @override
  void initState() {
    super.initState();
  }

  // Text(_aircraftResults.items[index].item),
  //  VerticalDivider(),
  // Text(_aircraftResults.items[index].weight.toStringAsFixed(2)),
  //  VerticalDivider(),
  // Text(_aircraftResults.items[index].arm.toStringAsFixed(2)),
  //  VerticalDivider(),
  // Text(_aircraftResults.items[index].moment.toStringAsFixed(2))

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Table(
        border: TableBorder.all(width: 1.0, color: Theme.of(context).accentColor),
        children: [
        TableRow(
          children: [
          Text("Item", style: new TextStyle(fontWeight: FontWeight.bold)),
          Text("Weight (lbs)", style: new TextStyle(fontWeight: FontWeight.bold)),
          Text("Arm", style: new TextStyle(fontWeight: FontWeight.bold)),
          Text("Moment (lbs)", style: new TextStyle(fontWeight: FontWeight.bold)),
        ]),
        TableRow(children: [
          Text(_aircraftResults.items[0].item),
          Text(_aircraftResults.items[0].weight.toStringAsFixed(1)),
          Text(_aircraftResults.items[0].arm.toStringAsFixed(0)),
          Text(_aircraftResults.items[0].moment.toStringAsFixed(1)),
        ]),
        TableRow(children: [
          Text(_aircraftResults.items[1].item),
          Text(_aircraftResults.items[1].weight.toStringAsFixed(1)),
          Text(_aircraftResults.items[1].arm.toStringAsFixed(0)),
          Text(_aircraftResults.items[1].moment.toStringAsFixed(1)),
        ]),
        TableRow(children: [
          Text(_aircraftResults.items[2].item),
          Text(_aircraftResults.items[2].weight.toStringAsFixed(1)),
          Text(_aircraftResults.items[2].arm.toStringAsFixed(0)),
          Text(_aircraftResults.items[2].moment.toStringAsFixed(1)),
        ]),
        TableRow(children: [
          Text(_aircraftResults.items[3].item),
          Text(_aircraftResults.items[3].weight.toStringAsFixed(1)),
          Text(_aircraftResults.items[3].arm.toStringAsFixed(0)),
          Text(_aircraftResults.items[3].moment.toStringAsFixed(1)),
        ]),
        TableRow(children: [
          Text(_aircraftResults.items[4].item),
          Text(_aircraftResults.items[4].weight.toStringAsFixed(1)),
          Text(_aircraftResults.items[4].arm.toStringAsFixed(0)),
          Text(_aircraftResults.items[4].moment.toStringAsFixed(1)),
        ]),
        TableRow(children: [
          Text("Total",style: new TextStyle(fontWeight: FontWeight.bold)),
          Text(_aircraftResults.totalWeight.toStringAsFixed(1),style: new TextStyle(fontWeight: FontWeight.bold)),
          Text(""),
          Text(_aircraftResults.totalMoment.toStringAsFixed(1),style: new TextStyle(fontWeight: FontWeight.bold)),
        ]),
      ]),
    );
  }
}
