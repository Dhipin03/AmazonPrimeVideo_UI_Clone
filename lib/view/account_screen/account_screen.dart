import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';
import 'package:prime_video_ui_clone/view/settings_screen/settings_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: AppBar(
            backgroundColor: ColorConstants.blackcolor,
            leading: Image.asset(
              ImageConstants.accounticon,
              width: 26,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Dhipin M K',
                  style: TextStyle(
                      color: ColorConstants.whitecolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Switch profiles',
                  style: TextStyle(
                      color: ColorConstants.greycolor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            actions: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      decoration: BoxDecoration(
                        color: ColorConstants.blackcolor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                      ),
                      width: double.infinity,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Container(
                              width: 40,
                              height: 5,
                              decoration: BoxDecoration(
                                color: ColorConstants.greycolorshade1,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22, vertical: 18),
                            child: Row(
                              children: [
                                Text(
                                  'Cast to device',
                                  style: TextStyle(
                                      color: ColorConstants.whitecolor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: ColorConstants.greycolor,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: ColorConstants.blueshade2,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 36, vertical: 18),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  color: ColorConstants.greycolor,
                                ),
                                SizedBox(width: 12),
                                Text(
                                  'No device found',
                                  style: TextStyle(
                                      color: ColorConstants.greycolor,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: ListTile(
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: ColorConstants.whitecolor,
                                size: 18,
                              ),
                              titleTextStyle: TextStyle(
                                  color: ColorConstants.whitecolor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                              title: Text('Learn more about casting'),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                child: Icon(
                  Icons.cast,
                  size: 30,
                  color: ColorConstants.greycolor,
                ),
              ),
              InkWell(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(context,
                      screen: SettingsScreen(), withNavBar: true);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Icon(
                    Icons.settings,
                    size: 25,
                    color: ColorConstants.greycolor,
                  ),
                ),
              )
            ],
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: ColorConstants.whitecolor,
                dividerColor: ColorConstants.greycolorshade2,
                tabs: [
                  Tab(
                    child: Container(
                      child: Text(
                        'Watchlist',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: ColorConstants.whitecolor,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'Purchases',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: ColorConstants.whitecolor,
                        ),
                      ),
                    ),
                  )
                ]),
          ),
        ),
        body: Container(
          color: ColorConstants.blackcolor,
          width: double.infinity,
          child: TabBarView(
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Browse now, Watch later',
                      style: TextStyle(
                          color: ColorConstants.whitecolor,
                          fontSize: 26,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 12),
                    Text(
                      textAlign: TextAlign.center,
                      'Your Watchlist is shared across all of\nyour devices',
                      style: TextStyle(
                          color: ColorConstants.greycolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                color: ColorConstants.blackcolor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
