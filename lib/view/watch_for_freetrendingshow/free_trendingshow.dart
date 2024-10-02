import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:prime_video_ui_clone/dummy_db.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';
import 'package:prime_video_ui_clone/view/account_screen/account_screen.dart';
import 'package:prime_video_ui_clone/view/global_widget/gloablwidget.dart';
import 'package:prime_video_ui_clone/view/global_widget/moviecardprime.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FreeTrendingshow extends StatefulWidget {
  const FreeTrendingshow({super.key});

  @override
  State<FreeTrendingshow> createState() => _FreeTrendingshowState();
}

class _FreeTrendingshowState extends State<FreeTrendingshow> {
  PageController _pagecontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildAppbarSection(context),
          SliverToBoxAdapter(
            child: Container(
              height: 1750,
              color: ColorConstants.blackcolor,
              child: Column(
                children: [
                  _buildmainposter(),
                  SizedBox(height: 18),
                  _buildPopularAsiandrama(),
                  SizedBox(height: 18),
                  _buildCrimeThrillerSection(),
                  SizedBox(height: 18),
                  _buildcomedyTvSection(),
                  SizedBox(height: 18),
                  _buildRomanticShowSection(),
                  SizedBox(height: 18),
                  _buildDramaTvSection(),
                  SizedBox(height: 18),
                  _buildAwardwinnigFilmsSection()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Column _buildAwardwinnigFilmsSection() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Award Winning Short films',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.horrormovielist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  subscriptionremove: true,
                  removeicon: true,
                  imageurl: DummyDb.actionadventuretv[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column _buildDramaTvSection() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Drama Delights',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.horrormovielist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  subscriptionremove: true,
                  removeicon: true,
                  imageurl: DummyDb.dramatv[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column _buildRomanticShowSection() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Romantic Show',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.horrormovielist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  subscriptionremove: true,
                  removeicon: true,
                  imageurl: DummyDb.romanticshowslist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column _buildcomedyTvSection() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Quickry Comedy',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.horrormovielist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  subscriptionremove: true,
                  removeicon: true,
                  imageurl: DummyDb.comedymovie[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column _buildCrimeThrillerSection() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Crime and Thriller',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.horrormovielist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  subscriptionremove: true,
                  removeicon: true,
                  imageurl: DummyDb.thrillertv[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column _buildPopularAsiandrama() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Popular in Asian dramas',
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
            itemCount: DummyDb.horrormovielist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  subscriptionremove: true,
                  removeicon: true,
                  imageurl: DummyDb.horrormovielist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column _buildmainposter() {
    return Column(
      children: [
        SizedBox(
          height: 260,
          child: PageView.builder(
            controller: _pagecontroller,
            itemCount: DummyDb.trendingshowList.length,
            itemBuilder: (context, index) => mainmovieposter_card(
              mxplayer: true,
              imageurl: DummyDb.trendingshowList[index]['imageurl'],
            ),
          ),
        ),
        SizedBox(height: 13),
        SmoothPageIndicator(
          controller: _pagecontroller,
          count: 8,
          effect: ScrollingDotsEffect(
            dotWidth: 6,
            dotHeight: 4,
            activeDotColor: ColorConstants.whitecolor,
            dotColor: ColorConstants.greycolor,
          ),
        )
      ],
    );
  }

  SliverAppBar _buildAppbarSection(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      snap: true,
      floating: true,
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
                          color: ColorConstants.greycolorshade1,
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
      title: Image.asset(ImageConstants.primevideoimg, width: 102),
      backgroundColor: ColorConstants.transparentcolor.withOpacity(0.95),
    );
  }
}
