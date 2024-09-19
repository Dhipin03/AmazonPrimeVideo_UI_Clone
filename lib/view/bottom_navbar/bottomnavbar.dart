import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:prime_video_ui_clone/view/downloads_screen/download_screen.dart';
import 'package:prime_video_ui_clone/view/search_screen/search_screen.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/view/home_screen/homescreen.dart';
import 'package:prime_video_ui_clone/view/prime_screen/primescreen.dart';
import 'package:prime_video_ui_clone/view/subscription_screen/subscription_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class Bottomnavbarscreen extends StatefulWidget {
  const Bottomnavbarscreen({
    super.key,
  });

  @override
  State<Bottomnavbarscreen> createState() => _BottomnavbarscreenState();
}

class _BottomnavbarscreenState extends State<Bottomnavbarscreen> {
  final List<Widget> _screens = [
    Homescreen(),
    Primescreen(),
    SubscriptionScreen(),
    DownloadScreen(),
    SearchScreen()
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _screens,
      items: [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home_outlined),
          title: "Home",
          activeColorPrimary: ColorConstants.whitecolor,
          inactiveColorPrimary: ColorConstants.greycolor,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.check_circle_outline_outlined),
          title: "Prime",
          activeColorPrimary: ColorConstants.whitecolor,
          inactiveColorPrimary: ColorConstants.greycolor,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(TablerIcons.layout_grid_add),
          title: "Subscriptions",
          activeColorPrimary: ColorConstants.whitecolor,
          inactiveColorPrimary: ColorConstants.greycolor,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(TablerIcons.download),
          title: "Downloads",
          activeColorPrimary: ColorConstants.whitecolor,
          inactiveColorPrimary: ColorConstants.greycolor,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.search),
          title: "Search",
          activeColorPrimary: ColorConstants.whitecolor,
          inactiveColorPrimary: ColorConstants.greycolor,
        ),
      ],
      navBarStyle: NavBarStyle.simple,
      onItemSelected: (value) {
        setState(() {
          index = value;
        });
      },
      backgroundColor: ColorConstants.blackcolor,
    );
  }
}
