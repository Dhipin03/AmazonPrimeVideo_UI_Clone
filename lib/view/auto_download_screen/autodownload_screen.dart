import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/view/autodownload_learrnmore_screen/autodownload_learnmoreScreeen.dart';

class Autodownloadscreen extends StatefulWidget {
  const Autodownloadscreen({super.key});

  @override
  State<Autodownloadscreen> createState() => _AutodownloadscreenState();
}

class _AutodownloadscreenState extends State<Autodownloadscreen> {
  bool isswitched = false;
  bool isswitched2 = false;
  String switch1 = 'Off';
  String switch2 = 'Off';
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: ColorConstants.blackcolor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Auto Downloads',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 50),
              Text(
                'Set how many episode are downloaded and whether\nWatched episode are deleted',
                style: TextStyle(
                    color: ColorConstants.textgreycolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              InkWell(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: AutodownloadLearnmorescreeen(),
                    withNavBar: true, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
                child: Text(
                  'Learn more',
                  style: TextStyle(color: ColorConstants.bluecolor),
                ),
              ),
              SizedBox(height: 12),
              Divider(
                color: ColorConstants.blueshade2,
              ),
              ListTile(
                subtitleTextStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.greycolor),
                subtitle: Text('$switch1'),
                titleTextStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.whitecolor),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text('Auto Downloads'),
                ),
                trailing: Theme(
                  data: ThemeData(useMaterial3: false),
                  child: Switch(
                    inactiveTrackColor: ColorConstants.greycolor,
                    value: isswitched,
                    onChanged: (value) {
                      setState(() {
                        isswitched = value;
                        value == true ? switch1 = 'On' : switch1 = 'Off';
                      });
                    },
                  ),
                ),
              ),
              if (isswitched)
                Column(
                  children: [
                    Divider(
                      color: ColorConstants.blueshade2,
                    ),
                    ListTile(
                        titleTextStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: ColorConstants.whitecolor),
                        title: Text('Episodes to\ndownload'),
                        trailing: SizedBox(
                          width: 150,
                          height: 150,
                          child: Row(
                            children: List.generate(
                              5,
                              (index) => Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 2),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedindex = index;
                                    });
                                  },
                                  child: Container(
                                    child: Center(
                                        child: Text(
                                      '${index + 1}',
                                      style: TextStyle(
                                          color: ColorConstants.whitecolor,
                                          fontSize: 12),
                                    )),
                                    width: 25,
                                    height: 25,
                                    color: selectedindex == index
                                        ? ColorConstants.bluecolor
                                        : ColorConstants.greycolorshade2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )),
                    Divider(
                      color: ColorConstants.blueshade2,
                    ),
                    ListTile(
                      subtitleTextStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.greycolor),
                      subtitle: Text('$switch2'),
                      titleTextStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.whitecolor),
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Text('Delete watched episodes'),
                      ),
                      trailing: Theme(
                        data: ThemeData(useMaterial3: false),
                        child: Switch(
                          inactiveTrackColor: ColorConstants.greycolor,
                          value: isswitched2,
                          onChanged: (value) {
                            setState(() {
                              isswitched2 = value;
                              value == true ? switch2 = 'On' : switch2 = 'Off';
                            });
                          },
                        ),
                      ),
                    ),
                    Divider(
                      color: ColorConstants.blueshade2,
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
