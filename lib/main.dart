import 'package:flutter/material.dart';
import 'splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFFE91E63),
        scaffoldBackgroundColor: Color(0xFFE91E63),
      ),
      home: splashscreen(),
    );
  }
}
