import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';

class animecard extends StatelessWidget {
  String imageurl;
  animecard({super.key, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 177,
      decoration: BoxDecoration(color: ColorConstants.blackcolor),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              '$imageurl',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 2),
          Row(
            children: [
              // Icon(
              //   Icons.shopping_bag,
              //   color: ColorConstants.yellowcolor,
              //   size: 20,
              // ),
              // SizedBox(width: 5),
              Text(
                'First episode free',
                style: TextStyle(
                    fontSize: 14,
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.normal),
              )
            ],
          )
        ],
      ),
    );
  }
}
