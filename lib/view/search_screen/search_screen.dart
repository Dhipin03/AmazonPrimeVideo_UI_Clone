import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:prime_video_ui_clone/dummy_db.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';
import 'package:prime_video_ui_clone/view/genres_screen/actionadventure.dart';
import 'package:prime_video_ui_clone/view/genres_screen/anime_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  double height = 250;
  double featurecollectionheight = 250;
  bool seemore = true;
  bool seemore1 = true;
  double mainbodyheight = 804;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.blackcolor,
        title: Text(
          'Search',
          style: TextStyle(
              color: ColorConstants.whitecolor,
              fontSize: 22,
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
      ),
      body: SingleChildScrollView(
        child: Container(
          height: mainbodyheight,
          width: double.infinity,
          padding: EdgeInsets.only(left: 18, right: 18, top: 22),
          decoration: BoxDecoration(color: ColorConstants.blackcolor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                  hintText: 'Search by actor, title...',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 36,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 22),
              Text(
                'Genres',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: ColorConstants.whitecolor),
              ),
              SizedBox(height: 12),
              SizedBox(
                height: height,
                child: GridView.builder(
                  itemCount: 11,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.5,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      if (index == 0) {
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: GenresScreen(),
                          withNavBar: true,
                        );
                      } else {
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: Animescreen(),
                          withNavBar: true,
                        );
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorConstants.blueshade2,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          DummyDb.genreslist[index]['text'],
                          style: TextStyle(
                            color: ColorConstants.whitecolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              if (seemore)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // InkWell(
                    //     onTap: () {
                    //       setState(() {
                    //         height = 500;
                    //         seemore = false;
                    //       });
                    //     },
                    //     child: Text(
                    //       'Click',
                    //       style: TextStyle(color: Colors.white),
                    //     )),
                    ElevatedButton(
                        style: ButtonStyle(
                            foregroundColor: WidgetStateProperty.all(
                                ColorConstants.whitecolor),
                            backgroundColor: WidgetStateProperty.all(
                                const Color.fromARGB(255, 44, 43, 43))),
                        onPressed: () {
                          setState(() {
                            height = 500;
                            mainbodyheight = 1260;
                            seemore = false;
                          });
                        },
                        child: Text(
                          'See more',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
              SizedBox(height: 12),
              Text(
                'Featured collections',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.whitecolor),
              ),
              Divider(
                color: ColorConstants.blueshade2,
              ),
              SizedBox(
                  height: featurecollectionheight,
                  child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Container(
                            height: 35,
                            child: Row(
                              children: [
                                Text(
                                  DummyDb.langugaes1list[index]['text'],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: ColorConstants.whitecolor,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                      separatorBuilder: (context, index) => Divider(
                            color: ColorConstants.blueshade2,
                          ),
                      itemCount: DummyDb.langugaes1list.length)),
              if (seemore1)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // InkWell(
                    //     onTap: () {
                    //       setState(() {
                    //         height = 500;
                    //         seemore = false;
                    //       });
                    //     },
                    //     child: Text(
                    //       'Click',
                    //       style: TextStyle(color: Colors.white),
                    //     )),
                    ElevatedButton(
                        style: ButtonStyle(
                            foregroundColor: WidgetStateProperty.all(
                                ColorConstants.whitecolor),
                            backgroundColor: WidgetStateProperty.all(
                                const Color.fromARGB(255, 44, 43, 43))),
                        onPressed: () {
                          setState(() {
                            featurecollectionheight = 490;
                            mainbodyheight = 1260;
                            seemore1 = false;
                          });
                        },
                        child: Text(
                          'See more',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
