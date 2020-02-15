import 'package:flutter/material.dart';

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
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
                onTap: (){
                  print('Items for review');
                },
              ),
              
              InkWell(
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 20.0
                  ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 20.0),
                    child: Placeholder(
                      fallbackHeight: 200,
                      fallbackWidth: MediaQuery.of(context).size.width * 0.80,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 20.0),
                    child: Placeholder(
                      fallbackHeight: 200,
                      fallbackWidth: MediaQuery.of(context).size.width * 0.80,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 20.0),
                    child: Placeholder(
                      fallbackHeight: 200,
                      fallbackWidth: MediaQuery.of(context).size.width * 0.80,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}