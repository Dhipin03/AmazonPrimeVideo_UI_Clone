import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/dummy_db.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';
import 'package:prime_video_ui_clone/view/global_widget/moviecardprime.dart';

class Animescreen extends StatefulWidget {
  const Animescreen({super.key});

  @override
  State<Animescreen> createState() => _AnimescreenState();
}

class _AnimescreenState extends State<Animescreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            appbar_section(),
            SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                height: 730,
                color: ColorConstants.blackcolor,
                child: Column(
                  children: [
                    tvshows(),
                    SizedBox(height: 18),
                    popularmoviewithsubscription(),
                    SizedBox(height: 18),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Text(
                                'Shop: Popular TV with subscriptions',
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
                            itemCount: DummyDb.toptvlist.length,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Moviecardprime(
                                  removeicon: true,
                                  imageurl: DummyDb.populartv[index]
                                      ['imageurl']),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column popularmoviewithsubscription() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Shop: Popular movies with',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'subscriptions',
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
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.popularmoviessubscription.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.popularmoviessubscription[index]
                      ['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column tvshows() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'TV shows',
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
            itemCount: DummyDb.toptvlist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  imageurl: DummyDb.animelist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  SliverAppBar appbar_section() {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      snap: true,
      floating: true,
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
      titleTextStyle: TextStyle(
          color: ColorConstants.whitecolor,
          fontWeight: FontWeight.w600,
          fontSize: 21),
      title: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Text('Anime'),
      ),
      backgroundColor: ColorConstants.transparentcolor.withOpacity(0.95),
      bottom: TabBar(
        dividerColor: Colors.black,
        unselectedLabelStyle:
            TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        labelColor: ColorConstants.whitecolor,
        unselectedLabelColor: ColorConstants.whitecolor,
        labelPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        isScrollable: true,
        indicatorWeight: 0,
        indicator: BoxDecoration(),
        tabs: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Tab(
              child: Container(
                width: 83,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: ColorConstants.greycolor),
                ),
                child: Center(
                  child: Text("Movies"),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              width: 102,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: ColorConstants.greycolor),
              ),
              child: Center(
                child: Text("TV shows"),
              ),
            ),
          ),
        ],
        tabAlignment: TabAlignment.start,
      ),
    );
  }
}
