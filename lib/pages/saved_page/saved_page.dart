import 'package:flutter/material.dart';
import 'package:remember_me_app/components/custom_bg.dart';
import 'package:remember_me_app/components/custompage.dart';
import 'package:remember_me_app/utills/theme.dart';

class SavedPage extends StatefulWidget {
  @override
  _SavedPageState createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {

    PageController controller = PageController();

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
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        child: Text(
                          "All Items",
                          style: hrzLinkStyle,
                        ),
                        onTap: (){
                          print("Tapped on all videos");
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        child: Text(
                          "Videos",
                          style: hrzLinkStyle,
                        ),
                        onTap: (){
                          print("Tapped on Videos");
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        child: Text(
                          "Articles",
                          style: hrzLinkStyle,
                        ),
                        onTap: (){
                          print("Tapped on articles");
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        child: Text(
                          "Inspiration",
                          style: hrzLinkStyle,
                        ),
                        onTap: (){
                          print("Tapped on Inspiration");
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        child: Text(
                          "Motivation",
                          style: hrzLinkStyle,
                        ),
                        onTap: (){
                          print("Tapped on Motication");
                        },
                      ),
                    )
                  ],
                ),
              ),

              Expanded(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CustomPage(),

                    Container(
                      color: Colors.blue,
                      child: Text("All items"),
                    ),

                    
                  ],
                  controller: controller,
                  onPageChanged: (num){
                    print(num);
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
