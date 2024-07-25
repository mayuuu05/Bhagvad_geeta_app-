import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/theme_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProviderTrue =
    Provider.of<ThemeProvider>(context, listen: true);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Timer(const Duration(seconds: 4), () async {
      Navigator.of(context).pushReplacementNamed('/home');
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: (themeProviderTrue.isDark)
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).colorScheme.primary,
        body: Center(child: Image.asset('assets/images/gita.png',height: 200,)),
      
        // body: Container(
        //   height: height,
        //   width: width,
        //   decoration:  const BoxDecoration(
        //       color: Colors.black,
        //       image: DecorationImage(
        //           image: AssetImage('assets/images/gita.png',),
        //           fit: BoxFit.cover,
        //           opacity: 0.2
        //       )
        //   ),
        //   // alignment: Alignment.center,
        //   // child: const Text('  || श्रीमद् ||\n भगवद गीता',style: TextStyle(
        //   //     fontSize: 35,
        //   //     color: Colors.white
        //   // ),),
        // ),
      ),
    );
  }
}
