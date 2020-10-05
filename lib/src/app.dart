import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class myApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(
        child: homePage(),
      ),
    );
  }
}
