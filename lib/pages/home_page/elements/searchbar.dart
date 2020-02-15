import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white
      ),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2
            )
          ),
          hintText: "Look for saved items",
          hintStyle: TextStyle(color: Color(0xFF909090)),
          fillColor: Colors.white,
          focusColor: Colors.white,
          suffixIcon: IconButton(
            icon: Icon(Icons.search),
            iconSize: 24.0,
            color: Color(0xFF909090),
            onPressed: (){
              print("Search pressed");
            },
          )
        ),
        
      ),
    );
  }
}