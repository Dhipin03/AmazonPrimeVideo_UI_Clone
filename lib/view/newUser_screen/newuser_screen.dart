import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';

class NewuserScreen extends StatefulWidget {
  const NewuserScreen({super.key});

  @override
  State<NewuserScreen> createState() => _NewuserScreenState();
}

class _NewuserScreenState extends State<NewuserScreen> {
  bool isSwitched = false;
  TextEditingController nametextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'New',
              style: TextStyle(
                  color: ColorConstants.whitecolor,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            Image.asset(
              ImageConstants.accounticon,
              scale: 0.51,
            ),
            Text(
              'Change',
              style: TextStyle(
                  color: ColorConstants.textgreycolor,
                  fontSize: 19,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                controller: nametextEditingController,
                decoration: InputDecoration(
                    hintText: 'Enter name',
                    hintStyle: TextStyle(
                        color: ColorConstants.textgreycolor,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                    fillColor: ColorConstants.whitecolor,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kid's profile?",
                            style: TextStyle(
                                color: ColorConstants.whitecolor,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Learn more",
                            style: TextStyle(
                                color: ColorConstants.bluecolor,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Theme(
                    data: ThemeData(useMaterial3: false),
                    child: Switch(
                      inactiveTrackColor: ColorConstants.greycolor,
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {});
                        isSwitched = value;
                      },
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).goNamed('whoIsWatchingscreen',
                      extra: nametextEditingController.text);
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'Save',
                      style: TextStyle(
                          color: ColorConstants.blackcolor,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorConstants.whitecolor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
