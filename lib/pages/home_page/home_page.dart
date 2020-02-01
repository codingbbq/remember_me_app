import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            title: Text("Saved"),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up),
            title: Text("Liked"),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.archive),
            title: Text("Archived"),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.format_align_justify),
            title: Text("More"),
          )
        ]
      ),
    );
  }
}