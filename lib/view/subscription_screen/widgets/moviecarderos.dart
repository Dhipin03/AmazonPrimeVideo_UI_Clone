import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';

class Moviecarderos extends StatelessWidget {
  String imageurl;
  Moviecarderos({super.key, required this.imageurl});

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
              Positioned(
                  bottom: 12,
                  right: 10,
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'eros',
                        style: GoogleFonts.openSans(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: ColorConstants.whitecolor)),
                    TextSpan(
                        text: 'now',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 22,
                            color: ColorConstants.whitecolor))
                  ])))
            ],
          ),
          SizedBox(height: 2),
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
                    fontSize: 16,
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}
