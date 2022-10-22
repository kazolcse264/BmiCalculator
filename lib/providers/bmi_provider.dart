import 'package:flutter/material.dart';

class BmiProvider extends ChangeNotifier{
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  var height = 0.0, weight = 0.0, bmi = 0.0;
  var category = '';
  void calculate() {
    height = double.parse(heightController.text);
    weight = double.parse(weightController.text);
    bmi = weight / (height * height);
    notifyListeners();
  }
}