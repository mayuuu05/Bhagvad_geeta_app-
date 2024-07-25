import 'package:bhagvad_geeta_app/Screens/provider/gita_shloks_provider.dart';
import 'package:bhagvad_geeta_app/Screens/provider/language_provider.dart';
import 'package:bhagvad_geeta_app/Screens/provider/language_translate_provider.dart';
import 'package:bhagvad_geeta_app/Screens/provider/theme_provider.dart';
import 'package:bhagvad_geeta_app/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const BhagavadGeetaApp());
}

class BhagavadGeetaApp extends StatelessWidget {
  const BhagavadGeetaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),

        ),
        ChangeNotifierProvider(
          create: (context) => LanguageProvider(),

        ),
        ChangeNotifierProvider(
          create: (context) => LanguageTranslateProvider(),

        ),
        ChangeNotifierProvider(
          create: (context) => GitaProvider(),

        ),
      ],

      builder: (context, child) => MaterialApp(
        themeMode: Provider.of<ThemeProvider>(context).isDark
            ? ThemeMode.dark
            : ThemeMode.light,
        theme: ThemeData(
            colorScheme: ColorScheme.light(
                primary: Color(0xffF9EEDC),
                surface: Colors.grey.shade900,
                onPrimaryContainer: Colors.brown.shade200,
                onPrimary: Colors.brown.shade900,
                secondary: Colors.black,
                onSecondary: Colors.brown.shade900,
                primaryContainer: Color(0xff774921)
            )
        ),
        darkTheme: ThemeData(
            colorScheme: ColorScheme.dark(
                surface: Colors.grey.shade900,
                primary: Color(0xffF9EEDC),
                onPrimary: Colors.brown.shade900,
                onPrimaryContainer: Colors.brown.shade200,
                secondary: Colors.black,
                onSecondary: Colors.brown.shade900,
                primaryContainer: Color(0xff774921)
            )
        ),
        debugShowCheckedModeBanner: false,
        routes: AppRoutes.routes,
      ),
    );
  }
}

