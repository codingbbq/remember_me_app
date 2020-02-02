import 'package:flutter/material.dart';
import 'package:remember_me_app/models/bottom_sheet_nav_items.dart';
import 'package:remember_me_app/pages/archived_page/archived_page.dart';
import 'package:remember_me_app/pages/home_page/home_page.dart';
import 'package:remember_me_app/pages/liked_page/liked_page.dart';
import 'package:remember_me_app/pages/saved_page/saved_page.dart';

class RememberMeLandingPage extends StatefulWidget {
  @override
  _RememberMeLandingPageState createState() => _RememberMeLandingPageState();
}

class _RememberMeLandingPageState extends State<RememberMeLandingPage> {

  int _currentIndex = 0;

  final List _pages = [
    HomePage(),
    SavedPage(),
    LikedPage(),
    ArchivedPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        selectedFontSize: 16.0,
        unselectedFontSize: 16.0,
        currentIndex: _currentIndex,
        onTap: onTabSelected,
                type: BottomNavigationBarType.fixed,
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
        
          void onTabSelected(int selectedIndex){
            // If user clicks on More, we want to show a bottom sheet
            if(selectedIndex == 4) {
             showModalBottomSheet(context: context, builder: (context){
               return Container(
                 height: 250,
                 child: Column(
                   children: bottomNavItems.map((nav) {
                     return ListTile(
                       leading: Icon(nav.icon),
                       title: Text(
                         nav.title,
                         style: TextStyle(
                           fontSize: 20.0,
                           color: Colors.black
                         )
                       ),
                       trailing: Icon(Icons.keyboard_arrow_right),
                       onTap: (){
                         print(nav.title);
                       },
                     );
                   }).toList()
                 ),
               );
             });
            }else{
              setState(() {
                _currentIndex = selectedIndex;
              });
            }
            
          }
}

