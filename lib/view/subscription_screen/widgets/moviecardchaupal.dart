import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';

class moviecardchaupal extends StatelessWidget {
  String imageurl;
  moviecardchaupal({super.key, required this.imageurl});

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
                child: Text(
                  'CHAUPAL',
                  style: GoogleFonts.delaGothicOne(
                      color: ColorConstants.whitecolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
              )
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
