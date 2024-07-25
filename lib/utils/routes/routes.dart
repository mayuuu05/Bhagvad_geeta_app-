import 'package:bhagvad_geeta_app/Screens/view/homeScreen/home_screen.dart';
import 'package:bhagvad_geeta_app/Screens/view/settingPage/setting_page.dart';
import 'package:bhagvad_geeta_app/Screens/view/shlock_page/shlock_page.dart';
import 'package:flutter/material.dart';

import '../../Screens/view/splashScreen/splash_screen.dart';



class AppRoutes{

  static Map <String,Widget Function(BuildContext)> routes= {
    '/': (context) => const SplashScreen(),
    '/home': (context) => const HomeScreen(),
    '/setting': (context) => const Settingpage(),
    '/shlock': (context) => const ShlockPage(),


  };
}