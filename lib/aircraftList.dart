import 'package:flutter/material.dart';
import 'package:weight_and_balance/pages/CalculatePage.dart';

class AircraftList extends StatelessWidget {
  List<Aircraft> aircraft = [];

  AircraftList() {
    aircraft.add(new Aircraft("ZS-SYA", "Cessna 172"));
    aircraft.add(new Aircraft("ZS-SYA", "Diamond DA20"));
  }

  @override
  Widget build(BuildContext context) {
    return _buildAircraftList();
  }

  Widget _buildAircraftItem(BuildContext context, int index) {
    return Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        child: new RaisedButton(
          child: Column(
            children: <Widget>[
              Text(aircraft[index].name),
              Text(aircraft[index].type)
            ],
          ),
          onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => CalculatePage(),
                ),
              ),
        ));
  }

  Widget _buildAircraftList() {
    Widget aircraftCards;

    if (aircraft.length > 0) {
      aircraftCards = ListView.builder(
        itemBuilder: _buildAircraftItem,
        itemCount: aircraft.length,
      );
    } else {
      aircraftCards = Container();
    }
    return aircraftCards;
  }
}

class Aircraft {
  String name;
  String type;

  Aircraft(this.name, this.type);
}
