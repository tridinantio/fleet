// ignore_for_file: prefer_const_constructors

import 'package:fleet/ui/pages/get_started_page.dart';
import 'package:fleet/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => GetStartedPage(),
        '/home': (context) => HomePage(),
        // '/get-started': (context) => GetStartedPage(),
        // '/sign-up': (context) => SignUpPage(),
        // '/bonus': (context) => BonusPage(),
      },
    );
  }
}
