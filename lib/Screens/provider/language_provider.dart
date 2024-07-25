import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  String selectedLanguage = 'Sanskrit';

  void languageTranslate(String value) {
    selectedLanguage = value;
    notifyListeners();
  }
}