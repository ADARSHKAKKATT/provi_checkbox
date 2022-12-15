import 'package:flutter/material.dart';

class Checkprovider extends ChangeNotifier {
  List<String> checklist = [];
  List<String> get words => checklist;

  //execute on tap time
  void selectedcheck(String word) {
    final isExist = checklist.contains(word);
    if (isExist) {
      checklist.remove(word);
    } else {
      checklist.add(word);
    }
    notifyListeners();
  }

  bool isCheck(String word) {
    final isChecked = checklist.contains(word);
    return isChecked;
  }
}
