import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Placeholder(
                fallbackHeight: 150,
                fallbackWidth: 350,
              )
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "41 Mackbook pro hacks for designers",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20.0,
                color: Color(0xFF1c2631)
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "22 Dec, 2019",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Color(0xFF9d9d9d)
              ),
            )
          ],
        ),
      ),
    );
  }
}