import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';
import 'package:prime_video_ui_clone/view/account_screen/account_screen.dart';
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
                color: ColorConstants.whitecolor,
                size: 32,
              ),
            ),
            InkWell(
              onTap: () {
                PersistentNavBarNavigator.pushNewScreen(context,
                    screen: AccountScreen(), withNavBar: true);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Image.asset(
                  ImageConstants.accounticon,
                  width: 42,
                  // scale: 122,
                ),
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
