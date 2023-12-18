import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_software/provider/myprovider.dart';
import 'package:project_software/styles/theme.dart';
import 'package:provider/provider.dart';
import '../../taps/tapone.dart';
import '../../taps/tapthree.dart';
import '../../taps/taptwo.dart';
class Home_Screen extends StatelessWidget {
  static const String nameroute = "home";
  int index = 0;
  List<Widget> tabs = [
    TapOne(),
    TapTwo(),
    TapThree(),
  ];
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            provider.bottomNavigationBar();
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home)
                ,label: ""
            ),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.sports_gymnastics)
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.person)
                    ,label: ""
            )
          ],
        ),
        body: tabs[index],
      ),
    );
  }
}

