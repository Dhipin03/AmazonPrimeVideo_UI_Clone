import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';

class AutodownloadLearnmorescreeen extends StatefulWidget {
  const AutodownloadLearnmorescreeen({super.key});

  @override
  State<AutodownloadLearnmorescreeen> createState() =>
      _AutodownloadLearnmorescreeenState();
}

class _AutodownloadLearnmorescreeenState
    extends State<AutodownloadLearnmorescreeen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What's Auto Downloads?",
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              SizedBox(height: 40),
              Text(
                  'the next episode of TV shows you downlaod and\nwatch on your mobile device are automatically\ndownloaded.',
                  style: TextStyle(
                      color: ColorConstants.textgreycolor,
                      fontWeight: FontWeight.normal,
                      fontSize: 15)),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: ColorConstants.whitecolor,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Data smart.',
                            style: TextStyle(
                              fontSize: 16,
                              color: ColorConstants.whitecolor,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: "We'll only download when your",
                            style: TextStyle(
                                color: ColorConstants.textgreycolor,
                                fontWeight: FontWeight.normal,
                                fontSize: 15))
                      ])),
                      Text('device has a Wi-Fi connection.',
                          style: TextStyle(
                              color: ColorConstants.textgreycolor,
                              fontWeight: FontWeight.normal,
                              fontSize: 15))
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: ColorConstants.whitecolor,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Space smart.',
                            style: TextStyle(
                              fontSize: 16,
                              color: ColorConstants.whitecolor,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: "If you want, we'll deleted watched",
                            style: TextStyle(
                                color: ColorConstants.textgreycolor,
                                fontWeight: FontWeight.normal,
                                fontSize: 15))
                      ])),
                      Text('episodes if the next episode is downloaded.',
                          style: TextStyle(
                              color: ColorConstants.textgreycolor,
                              fontWeight: FontWeight.normal,
                              fontSize: 15))
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: ColorConstants.whitecolor,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "You're in control",
                            style: TextStyle(
                              fontSize: 16,
                              color: ColorConstants.whitecolor,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: "Change how many episodes",
                            style: TextStyle(
                                color: ColorConstants.textgreycolor,
                                fontWeight: FontWeight.normal,
                                fontSize: 15))
                      ])),
                      Text(
                          "are downloaded and notifications you'll\nreceive, all within Settings.",
                          style: TextStyle(
                              color: ColorConstants.textgreycolor,
                              fontWeight: FontWeight.normal,
                              fontSize: 15))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
