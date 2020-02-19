import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Card(
        elevation: 0,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.80, // width of the card
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/mac.jpg',
                        fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "41 Mackbook pro hacks",
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
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFf8f8f9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton.icon(
                      onPressed: (){}, 
                      icon: Icon(Icons.thumb_up), 
                      label: Text("Like")
                    ),

                    FlatButton.icon(
                      onPressed: (){}, 
                      icon: Icon(Icons.bookmark), 
                      label: Text("Save")
                    ),

                    FlatButton.icon(
                      onPressed: (){}, 
                      icon: Icon(Icons.archive), 
                      label: Text("Archive")
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}