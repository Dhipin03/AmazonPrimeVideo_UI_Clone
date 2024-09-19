import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/dummy_db.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';
import 'package:prime_video_ui_clone/view/global_widget/moviecardprime.dart';

import 'package:prime_video_ui_clone/view/global_widget/primesubscriptioncard.dart';

class FindVideosDownlaod extends StatefulWidget {
  const FindVideosDownlaod({super.key});

  @override
  State<FindVideosDownlaod> createState() => _FindVideosDownlaodState();
}

class _FindVideosDownlaodState extends State<FindVideosDownlaod> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbarsection(),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: ColorConstants.blackcolor),
          child: Padding(
            padding: const EdgeInsets.only(top: 18),
            child: Column(
              children: [
                amazonorginalmovies(),
                SizedBox(height: 18),
                kidsandfamilysection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column kidsandfamilysection() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Kids and family movies',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
            SizedBox(width: 4),
            Icon(
              Icons.arrow_forward_ios,
              color: ColorConstants.whitecolor,
              size: 18,
            )
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.kidsanfamilymovies.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.kidsanfamilymovies[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column amazonorginalmovies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Amazon Orginal Movies',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: ColorConstants.whitecolor,
            )
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 326,
          child: ListView.builder(
            itemCount: DummyDb.amazonorginalmovies.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Primesubscriptioncard(
                removeicon: true,
                imageurl: DummyDb.amazonorginalmovies[index]['imageurl'],
              ),
            ),
          ),
        )
      ],
    );
  }

  AppBar appbarsection() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: ColorConstants.blackcolor,
      title: Text(
        'Find videos to\ndownload',
        style: TextStyle(
            color: ColorConstants.whitecolor,
            fontSize: 21,
            fontWeight: FontWeight.w500),
      ),
      actions: [
        Icon(
          Icons.cast,
          color: ColorConstants.whitecolor,
          size: 32,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Image.asset(
            ImageConstants.accounticon,
            width: 42,
            // scale: 122,
          ),
        )
      ],
    );
  }
}
