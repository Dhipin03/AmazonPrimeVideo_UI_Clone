import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';

class Primesubscriptioncard extends StatelessWidget {
  String imageurl;
  bool? removeicon;

  Primesubscriptioncard({
    super.key,
    required this.imageurl,
    this.removeicon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 326,
      decoration: BoxDecoration(
        color: ColorConstants.blackcolor,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(fit: BoxFit.cover, '$imageurl'),
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
          SizedBox(height: 6),
          Row(
            children: [
              Icon(
                Icons.shopping_bag,
                size: 20,
                color: ColorConstants.yellowcolor,
              ),
              Text(
                'Subscribe',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              )
            ],
          )
        ],
      ),
    );
  }
}
