import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';

import 'package:prime_video_ui_clone/view/home_screen/homescreen.dart';
import 'package:prime_video_ui_clone/view/prime_screen/primescreen.dart';

class Bottomnavbarscreen extends StatefulWidget {
  const Bottomnavbarscreen({super.key});

  @override
  State<Bottomnavbarscreen> createState() => _BottomnavbarscreenState();
}

class _BottomnavbarscreenState extends State<Bottomnavbarscreen> {
  List _screens = [
    Homescreen(),
    Primescreen(),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.black,
    ),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConstants.blackcolor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline_outlined),
            label: "prime",
          ),
          BottomNavigationBarItem(
            icon: Icon(TablerIcons.layout_grid_add),
            label: "Subscriptions",
          ),
          BottomNavigationBarItem(
            icon: Icon(TablerIcons.download),
            label: "Downloads",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorConstants.whitecolor,
        unselectedItemColor: ColorConstants.greycolor,
        unselectedFontSize: 9,
        selectedFontSize: 10,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
      ),
    );
  }
}
