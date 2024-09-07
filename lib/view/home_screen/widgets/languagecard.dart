import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';

class languagecard extends StatelessWidget {
  String imageurl;
  String text;
  String lang;
  languagecard(
      {super.key,
      required this.imageurl,
      required this.lang,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '$text',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          width: 270,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage('$imageurl')),
          ),
        ),
        Container(
          width: 270,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  ColorConstants.blackcolor.withOpacity(0.87),
                  ColorConstants.transparentcolor
                ]),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 4,
            child: Text(
              '$lang',
              style: TextStyle(
                  color: ColorConstants.whitecolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ))
      ],
    );
  }
}
