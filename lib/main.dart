import 'package:flutter/material.dart';
import 'screens/InputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF0B1234),
          appBarTheme: AppBarTheme(
            color: Color(0xFF0B1214)
          )
        ),
      home: InputPage(),
    );
  }
}

