import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';

class VideoPreviewWidget extends StatelessWidget {
  String imageurl;
  VideoPreviewWidget({super.key, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              width: 390,
              height: 200,
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: ColorConstants.greycolor)),
                gradient: LinearGradient(colors: [
                  ColorConstants.blackcolor.withOpacity(0.99),
                  ColorConstants.transparentcolor
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Container(
              width: 390,
              height: 200,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: ColorConstants.greycolor)),
                  gradient: LinearGradient(colors: [
                    ColorConstants.blackcolor.withOpacity(0.5),
                    ColorConstants.transparentcolor
                  ]),
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage('$imageurl'))),
            ),
          ],
        ),
        Positioned(
            top: 12,
            right: 8,
            child: Icon(
              Icons.volume_off,
              color: ColorConstants.whitecolor,
              size: 30,
            )),
        Positioned(
            bottom: 80,
            right: 195,
            child: Icon(
              Icons.replay,
              color: ColorConstants.whitecolor,
              size: 30,
            )),
        Positioned(
            bottom: 40,
            right: 230,
            child: Icon(
              Icons.add,
              color: ColorConstants.whitecolor,
              size: 30,
            )),
        Positioned(
            bottom: 40,
            right: 150,
            child: Icon(
              Icons.info_outline,
              color: ColorConstants.whitecolor,
              size: 30,
            )),
        Positioned(
          bottom: 10,
          right: 140,
          child: Row(
            children: [
              Text(
                'Watchlist',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 22,
              ),
              Text(
                'Details',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ],
    );
  }
}
