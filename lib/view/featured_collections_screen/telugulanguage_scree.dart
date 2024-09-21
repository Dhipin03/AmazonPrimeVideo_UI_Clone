import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/dummy_db.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';
import 'package:prime_video_ui_clone/view/global_widget/moviecardprime.dart';

class TelugulanguageScreen extends StatefulWidget {
  const TelugulanguageScreen({super.key});

  @override
  State<TelugulanguageScreen> createState() => _TelugulanguageScreenState();
}

class _TelugulanguageScreenState extends State<TelugulanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          appbar(),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(top: 12),
              width: double.infinity,
              height: 1500,
              color: ColorConstants.blackcolor,
              child: Column(
                children: [
                  languagecard(),
                  SizedBox(height: 18),
                  movies(),
                  SizedBox(height: 18),
                  recentlyaddedmovie(),
                  SizedBox(height: 18),
                  romanticmovie(),
                  SizedBox(height: 18),
                  actionadventure(),
                  SizedBox(height: 18),
                  topratedtelugumovies()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Column topratedtelugumovies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Top rated Telugu movies on  IMDb',
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
                  removeicon: true,
                  imageurl: DummyDb.teluguhits[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column actionadventure() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Action and  adventure movies',
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
                  imageurl: DummyDb.actionadventuremovielist[index]
                      ['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column romanticmovie() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Romantic movies',
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
                  imageurl: DummyDb.romanticcomedy[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column recentlyaddedmovie() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Recently added movies',
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
                  imageurl: DummyDb.recommnededmovies[index]['imageurl']),
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
                'Movies in Telugu',
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
                  imageurl: DummyDb.topmovies[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  SizedBox languagecard() {
    return SizedBox(
      height: 260,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(ImageConstants.telugulanguagecard))),
          ),
          Container(
            width: double.infinity,
            height: 260,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    ColorConstants.blackcolor.withOpacity(0.87),
                    ColorConstants.transparentcolor
                  ]),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 18,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Watch in\nTelugu',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 36,
                  color: ColorConstants.whitecolor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  SliverAppBar appbar() {
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
      title: Image.asset(ImageConstants.primevideoimg, width: 102),
      backgroundColor: ColorConstants.transparentcolor.withOpacity(0.95),
    );
  }
}
