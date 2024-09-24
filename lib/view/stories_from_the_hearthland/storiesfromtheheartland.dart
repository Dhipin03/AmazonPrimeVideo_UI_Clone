import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';

class Stroriesfromthescreen extends StatefulWidget {
  const Stroriesfromthescreen({super.key});

  @override
  State<Stroriesfromthescreen> createState() => _StroriesfromthescreenState();
}

class _StroriesfromthescreenState extends State<Stroriesfromthescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Strories From the\nheartland',
          style: TextStyle(
              color: ColorConstants.whitecolor,
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
    );
  }
}
