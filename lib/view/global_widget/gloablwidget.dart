import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';

class mainmovieposter_card extends StatelessWidget {
  String imageurl;
  bool? mxplayer;
  mainmovieposter_card(
      {super.key, required this.imageurl, this.mxplayer = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 260,
          decoration: BoxDecoration(
              color: ColorConstants.blackcolor,
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage("$imageurl"))),
        ),
        mxplayer == false
            ? Positioned(
                bottom: 12,
                left: 22,
                child: Row(
                  children: [
                    Icon(
                      size: 20,
                      Icons.shopping_bag,
                      color: ColorConstants.yellowcolor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "watch with prime",
                      style: TextStyle(
                          color: ColorConstants.whitecolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    )
                  ],
                ))
            : Positioned(
                bottom: 12,
                left: 22,
                child: Row(
                  children: [
                    Image.asset(
                      ImageConstants.checkicon,
                      width: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "MX Player(with ads)",
                      style: TextStyle(
                          color: ColorConstants.whitecolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    )
                  ],
                ))
      ],
    );
  }
}
