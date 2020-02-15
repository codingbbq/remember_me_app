import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 
                  "remember",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w300
                  )
              ),
              TextSpan(
                text: 
                  "me",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                  )
              ),

            ]
          )
        ),
        
        IconButton(
          color: Colors.white,
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