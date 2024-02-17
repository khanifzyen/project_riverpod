import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int counter;
  CounterModel({required this.counter});

  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }
}
