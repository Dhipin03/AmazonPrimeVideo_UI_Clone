import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';

class Moviecardprime extends StatelessWidget {
  String imageurl;
  bool? removeicon;
  bool? subscriptionremove;
  Moviecardprime(
      {super.key,
      required this.imageurl,
      this.removeicon = false,
      this.subscriptionremove = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 177,
      decoration: BoxDecoration(color: ColorConstants.blackcolor),
      child: Column(
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
              removeicon == false
                  ? Positioned(
                      bottom: 12,
                      right: 10,
                      child: Image.asset(
                        ImageConstants.primeicon,
                        width: 38,
                      ),
                    )
                  : SizedBox()
            ],
          ),
          SizedBox(height: 2),
          subscriptionremove == false
              ? Row(
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
                          fontSize: 16,
                          color: ColorConstants.whitecolor,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )
              : SizedBox()
        ],
      ),
    );
  }
}
