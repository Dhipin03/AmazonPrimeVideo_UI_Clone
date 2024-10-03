import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';

class Whoiswatchingscreen extends StatefulWidget {
  Whoiswatchingscreen({
    super.key,
  });

  @override
  State<Whoiswatchingscreen> createState() => _WhoiswatchingscreenState();
}

class _WhoiswatchingscreenState extends State<Whoiswatchingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, bottom: 30),
        color: ColorConstants.blackcolor,
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Who's Watching?",
              style: TextStyle(
                  color: ColorConstants.whitecolor,
                  fontSize: 28,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 40),
            _buildUserselectSection(context),
            Spacer(),
            Container(
              width: double.infinity,
              child: Center(
                child: Text(
                  'Edit profile',
                  style: TextStyle(
                      color: ColorConstants.whitecolor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstants.greycolorshade2),
            ),
            SizedBox(height: 25),
            Text(
              'Learn more',
              style: TextStyle(
                  color: ColorConstants.bluecolor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

//   Widget _buildUserselectSection(BuildContext context) {
//     return Wrap(
//       spacing: 60.0,
//       runSpacing: 40,
//       children: [
//         // First user profile
//         Column(
//           children: [
//             InkWell(
//               onTap: () {
//                 GoRouter.of(context).pushReplacementNamed('bottomnavbarscreen');
//               },
//               child: Image.asset(
//                 ImageConstants.accounticon,
//                 scale: 0.51,
//               ),
//             ),
//             SizedBox(height: 1),
//             Text(
//               'Dhipin M K',
//               style: TextStyle(
//                   color: ColorConstants.whitecolor,
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600),
//             )
//           ],
//         ),
//         // Second user profile wrapped in a column
//         Column(
//           children: [
//             InkWell(
//               onTap: () {
//                 GoRouter.of(context).pushNamed('newuserscreen');
//               },
//               child: CircleAvatar(
//                 backgroundColor: ColorConstants.greycolorshade2,
//                 radius: 44,
//                 child: Icon(
//                   Icons.add,
//                   color: ColorConstants.whitecolor,
//                 ),
//               ),
//             ),
//             SizedBox(height: 4),
//             Text(
//               'New',
//               style: TextStyle(
//                   color: ColorConstants.whitecolor,
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600),
//             )
//           ],
//         ),
//         // Additional user profiles can be added here
//         Column(
//           children: [
//             InkWell(
//               onTap: () {
//                 GoRouter.of(context).pushNamed('newuserscreen');
//               },
//               child: CircleAvatar(
//                 backgroundColor: ColorConstants.greycolorshade2,
//                 radius: 44,
//                 child: Icon(
//                   Icons.add,
//                   color: ColorConstants.whitecolor,
//                 ),
//               ),
//             ),
//             SizedBox(height: 4),
//             Text(
//               'New',
//               style: TextStyle(
//                   color: ColorConstants.whitecolor,
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600),
//             )
//           ],
//         ),
//       ],
//     );
//   }
// }
  Widget _buildUserselectSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          Wrap(
            spacing: 60.0,
            runSpacing: 40,
            children: [
              // First user profile
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      GoRouter.of(context)
                          .pushReplacementNamed('bottomnavbarscreen');
                    },
                    child: Image.asset(
                      ImageConstants.accounticon,
                      scale: 0.51,
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    'Dhipin M K',
                    style: TextStyle(
                        color: ColorConstants.whitecolor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),

              Column(
                children: [
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).pushNamed('newuserscreen');
                    },
                    child: CircleAvatar(
                      backgroundColor: ColorConstants.greycolorshade2,
                      radius: 44,
                      child: Icon(
                        Icons.add,
                        color: ColorConstants.whitecolor,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'New',
                    style: TextStyle(
                        color: ColorConstants.whitecolor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
