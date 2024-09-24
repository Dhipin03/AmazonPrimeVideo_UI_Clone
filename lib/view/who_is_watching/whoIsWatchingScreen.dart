import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';

class WhoIsWatchingScreen extends StatefulWidget {
  const WhoIsWatchingScreen({super.key});

  @override
  State<WhoIsWatchingScreen> createState() => _WhoIsWatchingScreenState();
}

class _WhoIsWatchingScreenState extends State<WhoIsWatchingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: ColorConstants.blackcolor,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 22),
            child: Column(
              children: [
                Text(
                  "Who's Watching?",
                  style: TextStyle(
                      color: ColorConstants.whitecolor,
                      fontWeight: FontWeight.w600,
                      fontSize: 28),
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 65),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              GoRouter.of(context)
                                  .pushReplacementNamed('bottomnavbarscreen');
                            },
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                ImageConstants.avataricon,
                              ),
                              backgroundColor: ColorConstants.bluecolor,
                              radius: 50,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'User',
                            style: TextStyle(
                                fontSize: 14,
                                color: ColorConstants.whitecolor,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(width: 72),
                      Column(
                        children: [
                          CircleAvatar(
                            child: Icon(
                              size: 38,
                              Icons.add,
                              color: ColorConstants.whitecolor,
                            ),
                            backgroundColor: ColorConstants.greycolorshade1,
                            radius: 50,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'New',
                            style: TextStyle(
                                fontSize: 14,
                                color: ColorConstants.whitecolor,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: Center(
                    child: Text(
                      'Edit profiles',
                      style: TextStyle(
                          color: ColorConstants.whitecolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ),
                  width: 380,
                  height: 55,
                  decoration: BoxDecoration(
                      color: ColorConstants.greycolorshade1,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(height: 28),
                Text(
                  'Learn More',
                  style: TextStyle(
                      color: ColorConstants.bluecolor,
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
