import 'package:flutter/material.dart';
import 'package:remember_me_app/rememberme.dart';

void main() => runApp(RememberMeApp());

class RememberMeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RememberMeLandingPage(),
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
      primaryColor: Colors.red[800],
      
    );
  }
}