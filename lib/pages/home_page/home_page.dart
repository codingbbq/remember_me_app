import 'package:flutter/material.dart';
import 'package:remember_me_app/pages/home_page/elements/head.dart';
import 'package:remember_me_app/pages/home_page/elements/searchbar.dart';
import 'package:remember_me_app/utills/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: appBGcolor,
      child: Column(
       children: <Widget>[
         SizedBox(height: 30.0,),
         Head(),
         SizedBox(height: 10.0,),
         SearchBar(),
       ],
      ),
    );
  }
}