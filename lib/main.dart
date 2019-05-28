import 'package:flutter/material.dart';
import './pages/aircraft-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.cyan,
          accentColor: Colors.blueGrey),
          home: AircraftPage(),
    );
  }
}
