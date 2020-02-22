import 'package:flutter/material.dart';
import 'package:remember_me_app/components/reviewCard.dart';
import 'package:remember_me_app/utills/theme.dart';

class CustomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Showing 52 items".toUpperCase(),
                style: hrzTitleStyle,
              ),
              FlatButton.icon(
                onPressed: (){

                }, 
                icon: Icon(Icons.filter_list), 
                label: Text(
                  "Filter"
                )
              )
            ],
          ),

          Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                ReviewCard(),
                ReviewCard(),
                ReviewCard(),
                ReviewCard(),
              ],
            ),
          )
          
        ],
      ),
    );
  }
}