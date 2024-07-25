import 'package:flutter/material.dart';

class LanguageTranslateProvider extends ChangeNotifier{
  int languageIndex = 0;

  void translateLanguage(){
    if(languageIndex<3){
      languageIndex++;
      notifyListeners();
    }
    else{
      notifyListeners();
      languageIndex = 0;
    }
  }
}