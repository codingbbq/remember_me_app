import 'package:flutter/material.dart';
import 'package:remember_me_app/components/custom_bg.dart';
import 'package:remember_me_app/pages/home_page/elements/head.dart';
import 'package:remember_me_app/pages/home_page/elements/itemsforreview.dart';
import 'package:remember_me_app/pages/home_page/elements/searchbar.dart';
import 'package:remember_me_app/utills/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CustomBGPainter(bgColor: homeBGcolor, curveHeight: 150),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Head(),
            SizedBox(
              height: 10.0,
            ),
            SearchBar(),
            SizedBox(
              height: 15.0,
            ),
            ItemsForReview(),
          ],
        ),
      ),
    );
  }
}
