import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "rememberme",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0
          )
        ),
        IconButton(
          color: Colors.black,
          icon: Icon(Icons.add),
          iconSize: 40.0,
          onPressed: (){
            print("Clicked on Plus icon on the Head()");
          },
        )
      ],
    );
  }
}