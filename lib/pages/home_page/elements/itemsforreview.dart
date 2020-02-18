import 'package:flutter/material.dart';
import 'package:remember_me_app/components/reviewCard.dart';
import 'package:remember_me_app/utills/theme.dart';

class ItemsForReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                child: Text(
                  "Items for review",
                  style: titleStyle
                ),
                onTap: (){
                  print('Items for review');
                },
              ),
              
              InkWell(
                child: Text(
                  "View All",
                  style: linkStyle
                ),
                onTap: (){
                  print('View all');
                },
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                children: <Widget>[
                  ReviewCard()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}