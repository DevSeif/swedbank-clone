import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Account with ChangeNotifier {
  String _pengar = "302 503,45";

  String get pengar => _pengar;

  void setMoney(String arg) {
    _pengar = arg;
    notifyListeners();
  }
}
