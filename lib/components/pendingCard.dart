import 'package:flutter/material.dart';

class PendingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Card(
                margin: EdgeInsets.zero,
                elevation: 0,
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 5.0, right: 20.0, bottom: 15.0, left: 20.0),

                  width: MediaQuery.of(context).size.width *
                      0.80, // width of the card

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.link),
                              SizedBox(width: 5.0,),
                              Text("2hrs ago")
                            ],
                          ),
                          IconButton(
                            padding: const EdgeInsets.all(0),
                            icon: Icon(Icons.more_vert),
                            color: Colors.black,
                            onPressed: () {},
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Placeholder(
                            fallbackWidth: 100,
                            fallbackHeight: 100,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Flexible(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Dogs are always the funniest",
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "America's funniest videos",
                                    style: TextStyle(fontSize: 12.0),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                color: Color(0xFFf8f8f9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton.icon(
                      onPressed: (){}, 
                      icon: Icon(Icons.favorite), 
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
      ],
    );
  }
}
