import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counterValue = 0;

  int get counterValue => _counterValue;

  void incrementValue() {
    _counterValue++;
    notifyListeners();
  }

  void decrementValue() {
    _counterValue--;
    notifyListeners();
  }
}
