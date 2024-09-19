import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';

class Moviecarddiscoveryplus extends StatelessWidget {
  String imageurl;
  Moviecarddiscoveryplus({super.key, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                '$imageurl',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: -10,
              right: 10,
              child: Image.asset(
                ImageConstants.discoveryicon,
                width: 78,
              ),
            )
          ],
        ),
        SizedBox(height: 4),
        Row(
          children: [
            Icon(
              Icons.shopping_bag,
              color: ColorConstants.yellowcolor,
              size: 20,
            ),
            SizedBox(width: 5),
            Text(
              'Subscribe',
              style: TextStyle(
                  fontSize: 14,
                  color: ColorConstants.whitecolor,
                  fontWeight: FontWeight.normal),
            )
          ],
        )
      ],
    );
  }
}
