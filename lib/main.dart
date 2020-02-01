import 'package:flutter/material.dart';
import 'package:remember_me_app/pages/home_page/home_page.dart';

void main() => runApp(RememberMeApp());

class RememberMeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}