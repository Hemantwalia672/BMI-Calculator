import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final height;
  final weight;
  late double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getDescription() {
    if (_bmi > 25) {
      return 'Eat Less and Exercise More';
    } else if (_bmi > 18.5) {
      return 'Enjoy';
    } else {
      return 'Eat More and Enjoy';
    }
  }
}
