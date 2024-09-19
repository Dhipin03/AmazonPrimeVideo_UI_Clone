import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';
import 'package:prime_video_ui_clone/view/auto_download_screen/autodownload_screen.dart';
import 'package:prime_video_ui_clone/view/find_videos%20to%20download/find_videos_downlaod.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstants.blackcolor,
          title: Text(
            'Downloads',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: ColorConstants.whitecolor,
                fontSize: 21),
          ),
          actions: [
            Icon(
              Icons.cast,
              color: ColorConstants.whitecolor,
              size: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset(
                ImageConstants.accounticon,
                width: 42,
                // scale: 122,
              ),
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: ColorConstants.blackcolor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'No videos downloaded',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: FindVideosDownlaod(),
                    withNavBar: true,
                  );
                },
                child: Container(
                  width: 245,
                  height: 55,
                  decoration: BoxDecoration(
                      color: ColorConstants.greycolorshade1,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Find videos to download',
                      style: TextStyle(
                          fontSize: 18, color: ColorConstants.whitecolor),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Auto Downloads:',
                    style: TextStyle(
                        color: ColorConstants.whitecolor,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    ' On',
                    style: TextStyle(
                        color: ColorConstants.whitecolor,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 3,
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: Autodownloadscreen(),
                        withNavBar: true,
                      );
                    },
                    child: Text(
                      'Manage',
                      style: TextStyle(
                          color: ColorConstants.bluecolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
