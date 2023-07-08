import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  List<String> _words = [];
  List<String> get words => _words;
  void addWord() {}
  void toggleFav(String word) {
    final isExisting = _words.contains(word);
    if (isExisting) {
      words.remove(word);
    } else {
      words.add(word);
    }
    notifyListeners();
  }

  bool isExist(String word) {
    final isExisting = _words.contains(word);
    return isExisting;
  }

  void reset() {
    _words = [];
  }
}
