import 'package:flutter/cupertino.dart';

class ThemeProvider extends ChangeNotifier
{
  bool isDark = false;
  void ChangeTheme()
  {
    isDark =! isDark;
    notifyListeners();
  }
}