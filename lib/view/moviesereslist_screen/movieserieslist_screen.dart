import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:prime_video_ui_clone/dummy_db.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';
import 'package:prime_video_ui_clone/view/account_screen/account_screen.dart';

class MovieserieslistScreen extends StatefulWidget {
  String maintitle;
  bool? removeseason;
  MovieserieslistScreen(
      {super.key, required this.maintitle, this.removeseason = false});

  @override
  State<MovieserieslistScreen> createState() => _MovieserieslistScreenState();
}

class _MovieserieslistScreenState extends State<MovieserieslistScreen> {
  bool ischecked1 = false;
  bool ischecked2 = false;
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: Directionality(
          textDirection: TextDirection.ltr,
          child: SizedBox(
            width: 360,
            child: Drawer(
              child: Container(
                width: double.infinity,
                color: ColorConstants.blueshade2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Content type',
                            style: TextStyle(
                                color: ColorConstants.whitecolor,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                show = !show;
                              });
                            },
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: ColorConstants.whitecolor,
                            ),
                          )
                        ],
                      ),
                      if (show)
                        Column(
                          children: [
                            SizedBox(height: 12),
                            Divider(
                              color: ColorConstants.greycolorshade1,
                            ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Movies',
                                  style: TextStyle(
                                      color: ColorConstants.textgreycolor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                                Checkbox(
                                  checkColor: ColorConstants.blackcolor,
                                  side: BorderSide(
                                    width: 2,
                                    color: ColorConstants.whitecolor,
                                  ),
                                  activeColor: ColorConstants.bluecolor,
                                  fillColor: WidgetStateProperty.all(
                                      ischecked1 == true
                                          ? ColorConstants.bluecolor
                                          : ColorConstants.blackcolor),
                                  value: ischecked1,
                                  onChanged: (value) {
                                    setState(() {
                                      ischecked1 = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Divider(
                              color: ColorConstants.greycolorshade1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'TV Shows',
                                  style: TextStyle(
                                      color: ColorConstants.textgreycolor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                                Checkbox(
                                  checkColor: ColorConstants.blackcolor,
                                  side: BorderSide(
                                    width: 2,
                                    color: ColorConstants.whitecolor,
                                  ),
                                  activeColor: ColorConstants.bluecolor,
                                  fillColor: WidgetStateProperty.all(
                                      ischecked2 == true
                                          ? ColorConstants.bluecolor
                                          : ColorConstants.blackcolor),
                                  value: ischecked2,
                                  onChanged: (value) {
                                    setState(() {
                                      ischecked2 = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: ColorConstants.blackcolor,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              '${widget.maintitle}',
              style: TextStyle(
                  color: ColorConstants.whitecolor,
                  fontWeight: FontWeight.w600,
                  fontSize: 22),
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    decoration: BoxDecoration(
                      color: ColorConstants.blackcolor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    ),
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Container(
                            width: 40,
                            height: 5,
                            decoration: BoxDecoration(
                              color: ColorConstants.greycolor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 22, vertical: 18),
                          child: Row(
                            children: [
                              Text(
                                'Cast to device',
                                style: TextStyle(
                                    color: ColorConstants.whitecolor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.close,
                                  color: ColorConstants.greycolor,
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: ColorConstants.blueshade2,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 36, vertical: 18),
                          child: Row(
                            children: [
                              Icon(
                                Icons.info_outline,
                                color: ColorConstants.greycolor,
                              ),
                              SizedBox(width: 12),
                              Text(
                                'No device found',
                                style: TextStyle(
                                    color: ColorConstants.greycolor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: ListTile(
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: ColorConstants.whitecolor,
                              size: 18,
                            ),
                            titleTextStyle: TextStyle(
                                color: ColorConstants.whitecolor,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                            title: Text('Learn more about casting'),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              child: Icon(
                Icons.cast,
                color: ColorConstants.whitecolor,
                size: 32,
              ),
            ),
            InkWell(
              onTap: () {
                PersistentNavBarNavigator.pushNewScreen(context,
                    screen: AccountScreen(), withNavBar: true);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Image.asset(
                  ImageConstants.accounticon,
                  width: 42,
                  // scale: 122,
                ),
              ),
            )
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${DummyDb.tvshowslist.length} videos',
                      style: TextStyle(
                          color: ColorConstants.textgreycolor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Builder(
                      builder: (context) => InkWell(
                        onTap: () {
                          Scaffold.of(context).openEndDrawer();
                        },
                        child: Container(
                          width: 85,
                          height: 45,
                          decoration: BoxDecoration(
                              color: ColorConstants.greycolorshade1,
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                            child: Text(
                              'Filter',
                              style: TextStyle(
                                  color: ColorConstants.whitecolor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(
              DummyDb.tvshowslist.length,
              (index) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 11, horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  DummyDb.tvshowslist[index]['imageurl']))),
                      width: 190,
                      height: 100,
                    ),
                    SizedBox(width: 8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DummyDb.tvshowslist[index]['title'],
                          style: TextStyle(
                              color: ColorConstants.whitecolor,
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                        if (widget.removeseason == false)
                          Text(
                            DummyDb.tvshowslist[index]['season'],
                            style: TextStyle(
                                color: ColorConstants.whitecolor,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                        SizedBox(height: 4),
                        Text(
                          DummyDb.tvshowslist[index]['year'],
                          style: TextStyle(
                              color: ColorConstants.textgreycolor,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(height: 2),
                        Row(
                          children: [
                            Icon(
                              Icons.shopping_bag,
                              color: ColorConstants.yellowcolor,
                              size: 18,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'subscribe',
                              style: TextStyle(
                                  color: ColorConstants.whitecolor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_vert,
                      size: 30,
                      color: ColorConstants.greycolorshade1,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
