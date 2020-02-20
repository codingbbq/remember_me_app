import 'package:flutter/material.dart';
import 'package:remember_me_app/components/pendingCard.dart';
import 'package:remember_me_app/utills/theme.dart';

class LongPendingItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                child: Text(
                  "Long pending items",
                  style: titleStyle
                ),
                onTap: (){
                  print('Long pending items');
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
                  PendingCard(),
                  PendingCard(),
                  PendingCard(),
                  PendingCard(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}