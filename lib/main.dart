import 'package:flutter/material.dart';
import 'price_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.cyan[800],
          scaffoldBackgroundColor: Colors.blueGrey[900]),
      home: PriceScreen(),
    );
  }
}
