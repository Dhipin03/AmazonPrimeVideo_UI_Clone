import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';

class Top10mviecard extends StatelessWidget {
  String imageurl;
  String num;
  bool removeicon;
  Top10mviecard(
      {super.key,
      required this.imageurl,
      required this.num,
      this.removeicon = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      height: 170,
      decoration: BoxDecoration(color: ColorConstants.blackcolor),
      child: Column(
        children: [
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 140,
                      width: 250,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage('$imageurl'))),
                    ),
                  )
                ],
              ),
              Positioned(
                  left: 4,
                  top: 16,
                  child: Text('$num',
                      style: GoogleFonts.delaGothicOne(
                          color: ColorConstants.whitecolor, fontSize: 82))),
              removeicon == false
                  ? Positioned(
                      right: 2,
                      top: 90,
                      child: Image.asset(
                        ImageConstants.primeicon,
                        width: 38,
                      ))
                  : SizedBox()
            ],
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 34),
            child: Row(
              children: [
                Icon(
                  Icons.shopping_bag,
                  color: ColorConstants.yellowcolor,
                  size: 22,
                ),
                SizedBox(width: 4),
                Text(
                  'Subscribe or rent',
                  style: TextStyle(color: ColorConstants.whitecolor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
