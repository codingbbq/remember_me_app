import 'package:flutter/material.dart';
import 'package:remember_me_app/components/custom_bg.dart';
import 'package:remember_me_app/components/custompage.dart';
import 'package:remember_me_app/utills/theme.dart';

class SavedPage extends StatefulWidget {
  @override
  _SavedPageState createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  

  int _currentIndex = 0;

  @override
  void initState(){
    super.initState();
    _currentIndex = 0;
  }
  
  @override
  Widget build(BuildContext context) {

    PageController _pageViewcontroller = PageController(
      initialPage: 0
    );

    ScrollController _scrollViewController = ScrollController();

    onLinkSelected(int index) {
      setState(() {
        _currentIndex = index;
      });
      print(_currentIndex.toString());
      if(_pageViewcontroller.hasClients){
        _pageViewcontroller.animateToPage(
          _currentIndex,
          duration: Duration(
            milliseconds: 500
          ),
          curve: Curves.easeInOutCubic
        );
      }
    }

    return SafeArea(
      child: CustomPaint(
        painter: CustomBGPainter(bgColor: Color(0xFFfcfcfc), curveHeight: 200),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // Horizontal links
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: _scrollViewController,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        child: Text(
                          "All Items",
                          style: (_currentIndex == 0) ? hrzSelectedStyle : hrzLinkStyle,
                        ),
                        onTap: () => onLinkSelected(0)
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        child: Text(
                          "Videos",
                          style:  (_currentIndex == 1) ? hrzSelectedStyle : hrzLinkStyle,
                        ),
                        onTap: () => onLinkSelected(1)
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        child: Text(
                          "Articles",
                          style:  (_currentIndex == 2) ? hrzSelectedStyle : hrzLinkStyle,
                        ),
                        onTap: () => onLinkSelected(2)
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        child: Text(
                          "Inspiration",
                          style:  (_currentIndex == 3) ? hrzSelectedStyle : hrzLinkStyle,
                        ),
                        onTap: () => onLinkSelected(3)
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        child: Text(
                          "Motivation",
                          style:  (_currentIndex == 4) ? hrzSelectedStyle : hrzLinkStyle,
                        ),
                        onTap: () => onLinkSelected(4)
                      ),
                    )
                  ],
                ),
              ),

              Expanded(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CustomPage(page: "AllItems"),
                    CustomPage(page: "Videos"),
                    Container(
                      color: Colors.green.shade50,
                      child: Center(
                        child: Text(
                          "Content related to Articles",
                          style: TextStyle(
                            color: Colors.green.shade800,
                            fontSize: 30.0
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.red.shade50,
                      child: Center(
                        child: Text(
                          "Inspirational Content",
                          style: TextStyle(
                            color: Colors.red.shade800,
                            fontSize: 30.0
                          ),
                        ),
                      ),
                    ),

                    Container(
                      color: Colors.blue.shade50,
                      child: Center(
                        child: Text(
                          "Motivational Content",
                          style: TextStyle(
                            color: Colors.blue.shade800,
                            fontSize: 30.0
                          ),
                        ),
                      ),
                    ) 

                  ],
                  controller: _pageViewcontroller,
                  onPageChanged: (int idx){
                    // When the user swips the page to left/right, we also want to update the styles of the links.
                    setState(() {
                      _currentIndex = idx;
                    });
                     _scrollViewController.jumpTo(0);
                    if(idx >= 3){
                      _scrollViewController.jumpTo(180);
                    }

                    
                  },
                ),
                
              )
            ],
          )
        ),
      ),
    );
  }
}
