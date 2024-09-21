import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/dummy_db.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';
import 'package:prime_video_ui_clone/view/global_widget/moviecardprime.dart';
import 'package:prime_video_ui_clone/view/global_widget/moviecardrent.dart';

class GenresScreen extends StatefulWidget {
  String title;
  String imageurl;
  String imageurl2;
  String imageurl3;
  String imageurl4;
  String imageurl5;
  String imageurl6;
  String imageurl7;
  GenresScreen({
    super.key,
    required this.imageurl,
    required this.title,
    required this.imageurl2,
    required this.imageurl3,
    required this.imageurl4,
    required this.imageurl5,
    required this.imageurl6,
    required this.imageurl7,
  });

  @override
  State<GenresScreen> createState() => _GenresScreenState();
}

class _GenresScreenState extends State<GenresScreen> {
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
                padding: EdgeInsets.only(top: 12),
                height: 1700,
                color: ColorConstants.blackcolor,
                child: Column(
                  children: [
                    movies(),
                    SizedBox(height: 18),
                    tvshows_section(),
                    SizedBox(height: 18),
                    movietorent(),
                    SizedBox(height: 18),
                    popularmovie_section(),
                    SizedBox(height: 18),
                    populartv(),
                    SizedBox(height: 18),
                    Column(
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
                                    'Subscriptions',
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
                            itemCount: DummyDb.movietorent.length,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Moviecardrent(
                                  text: 'Subscribe',
                                  imageurl: widget.imageurl6),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 18),
                    populartvwithsubscription()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column popularmovie_section() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Popular movies',
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
            itemCount: DummyDb.populartvlist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(imageurl: widget.imageurl4),
            ),
          ),
        )
      ],
    );
  }

  Column movies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'movies',
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
            itemCount: DummyDb.latestmovielist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(imageurl: widget.imageurl),
            ),
          ),
        )
      ],
    );
  }

  Column populartv() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Popular Tv',
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
            itemCount: DummyDb.populartvlist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(imageurl: widget.imageurl5),
            ),
          ),
        )
      ],
    );
  }

  Column populartvwithsubscription() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Shop: popular Tv with subscriptions',
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
            itemCount: DummyDb.populartvwithsubsciption.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardrent(
                text: 'Subscribe',
                imageurl: widget.imageurl7,
              ),
            ),
          ),
        )
      ],
    );
  }

  Column movietorent() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Shop: Movie to rent',
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
            itemCount: DummyDb.movietorent.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardrent(text: 'Rent', imageurl: widget.imageurl3),
            ),
          ),
        )
      ],
    );
  }

  Column tvshows_section() {
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
              child: Moviecardprime(imageurl: widget.imageurl2),
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
      title: Text(widget.title),
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
