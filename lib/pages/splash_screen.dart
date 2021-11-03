import 'package:flutter/material.dart';
import 'package:magic_coffe/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool lightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: lightMode ? green : green,
        body: Center(
            child: lightMode
                ? Image.asset('assets/images/app_logo.png')
                : Image.asset('assets/images/app_logo.png')),
      ),
    );
  }
}
