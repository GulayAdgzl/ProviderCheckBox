//Provider in Gücü Adına:)

import 'package:flutter/material.dart';

class CheckViewModel extends ChangeNotifier {
  bool isCheckBoxOkay = false;
  String? _inputText;

  void checkBoxChange(bool value) {
    //Ekrana haber verme
    isCheckBoxOkay = value;
    notifyListeners();
  }
}
//changeNotifier