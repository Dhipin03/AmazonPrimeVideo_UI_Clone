import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstants.blackcolor,
        title: Text(
          'Settings',
          style: TextStyle(
              color: ColorConstants.whitecolor,
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          width: double.infinity,
          color: ColorConstants.blackcolor,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Stream & download',
                  style: TextStyle(
                      color: ColorConstants.whitecolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  'Manage quality and Wi-Fi',
                  style: TextStyle(
                      color: ColorConstants.greycolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Divider(
                color: ColorConstants.blueshade2,
              ),
              ListTile(
                title: Text(
                  'Notification',
                  style: TextStyle(
                      color: ColorConstants.whitecolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  'On',
                  style: TextStyle(
                      color: ColorConstants.greycolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Divider(
                color: ColorConstants.blueshade2,
              ),
              ListTile(
                title: Text(
                  'Auto play',
                  style: TextStyle(
                      color: ColorConstants.whitecolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  'play the next episode\nautomaticaly',
                  style: TextStyle(
                      color: ColorConstants.greycolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                trailing: Theme(
                  data: ThemeData(useMaterial3: false),
                  child: Switch(
                    inactiveTrackColor: ColorConstants.greycolor,
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                ),
              ),
              Divider(
                color: ColorConstants.blueshade2,
              ),
              ListTile(
                title: Text(
                  'Parental Controls',
                  style: TextStyle(
                      color: ColorConstants.whitecolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  'Control what you can watch',
                  style: TextStyle(
                      color: ColorConstants.greycolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Divider(
                color: ColorConstants.blueshade2,
              ),
              ListTile(
                title: Text(
                  'Registered devices',
                  style: TextStyle(
                      color: ColorConstants.whitecolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  'See all registered devices',
                  style: TextStyle(
                      color: ColorConstants.greycolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Divider(
                color: ColorConstants.blueshade2,
              ),
              ListTile(
                title: Text(
                  'Clear Video search history',
                  style: TextStyle(
                      color: ColorConstants.whitecolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                // subtitle: Text(
                //   'See all registered devices',
                //   style: TextStyle(
                //       color: ColorConstants.greycolor,
                //       fontSize: 16,
                //       fontWeight: FontWeight.w500),
                // ),
              ),
              Divider(
                color: ColorConstants.blueshade2,
              ),
              ListTile(
                title: Text(
                  'My Account',
                  style: TextStyle(
                      color: ColorConstants.whitecolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                // subtitle: Text(
                //   'See all registered devices',
                //   style: TextStyle(
                //       color: ColorConstants.greycolor,
                //       fontSize: 16,
                //       fontWeight: FontWeight.w500),
                // ),
              ),
              Divider(
                color: ColorConstants.blueshade2,
              ),
              ListTile(
                title: Text(
                  'Prime and subscriptions',
                  style: TextStyle(
                      color: ColorConstants.whitecolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  'Manage your subscriptions',
                  style: TextStyle(
                      color: ColorConstants.greycolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Divider(
                color: ColorConstants.blueshade2,
              ),
              ListTile(
                title: Text(
                  'Languages',
                  style: TextStyle(
                      color: ColorConstants.whitecolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                // subtitle: Text(
                //   'See all registered devices',
                //   style: TextStyle(
                //       color: ColorConstants.greycolor,
                //       fontSize: 16,
                //       fontWeight: FontWeight.w500),
                // ),
              ),
              Divider(
                color: ColorConstants.blueshade2,
              ),
              ListTile(
                title: Text(
                  'Hidden videos',
                  style: TextStyle(
                      color: ColorConstants.whitecolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                // subtitle: Text(
                //   'See all registered devices',
                //   style: TextStyle(
                //       color: ColorConstants.greycolor,
                //       fontSize: 16,
                //       fontWeight: FontWeight.w500),
                // ),
              ),
              Divider(
                color: ColorConstants.blueshade2,
              ),
              ListTile(
                title: Text(
                  'Help & Feedback',
                  style: TextStyle(
                      color: ColorConstants.whitecolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                // subtitle: Text(
                //   'See all registered devices',
                //   style: TextStyle(
                //       color: ColorConstants.greycolor,
                //       fontSize: 16,
                //       fontWeight: FontWeight.w500),
                // ),
              ),
              Divider(
                color: ColorConstants.blueshade2,
              ),
              ListTile(
                title: Text(
                  'About & Legal',
                  style: TextStyle(
                      color: ColorConstants.whitecolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                // subtitle: Text(
                //   'See all registered devices',
                //   style: TextStyle(
                //       color: ColorConstants.greycolor,
                //       fontSize: 16,
                //       fontWeight: FontWeight.w500),
                // ),
              ),
              Divider(
                color: ColorConstants.blueshade2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
