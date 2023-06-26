import 'dart:math';

import 'package:flutter/cupertino.dart';

class BMICalculator {

  BMICalculator({@required this.height, @required this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculate_bmi() {
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String bmi_result() {
    if (_bmi < 18.0) {
      return "Underweight";
    } else if (_bmi < 25) {
      return "Normal";
    } else if (_bmi < 29) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

  String bmi_interpretation() {
    if (_bmi < 18.0) {
      return "Caution! You need to gain weight as you are underweight!";
    } else if (_bmi < 25) {
      return "Good job! You are having perfect body BMI!";
    } else if (_bmi < 29) {
      return "Caution! You overweight, start managing your weight!";
    } else {
      return "Danger! Start working on your weight immediately!";
    }
  }
}