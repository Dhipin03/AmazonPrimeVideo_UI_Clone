import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/dummy_db.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';
import 'package:prime_video_ui_clone/view/global_widget/moviecardprime.dart';

class TamillanguageScreen extends StatefulWidget {
  const TamillanguageScreen({super.key});

  @override
  State<TamillanguageScreen> createState() => _TamillanguageScreenState();
}

class _TamillanguageScreenState extends State<TamillanguageScreen> {
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
              height: 2000,
              color: ColorConstants.blackcolor,
              child: Column(
                children: [
                  languagecard(),
                  SizedBox(height: 18),
                  movies(),
                  SizedBox(height: 18),
                  recentlyaddedmovie(),
                  SizedBox(height: 18),
                  tvshowsintamil(),
                  SizedBox(height: 18),
                  actionadventure(),
                  SizedBox(height: 18),
                  comedymovies(),
                  SizedBox(height: 18),
                  toptamilmovie(),
                  SizedBox(height: 18),
                  moviedubbedtamilmovies(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Column moviedubbedtamilmovies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Movies dubbed in Tamil',
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
                  imageurl: DummyDb.topratedmovies[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column toptamilmovie() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Top rated Tamil movies on IMDb',
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
                  imageurl: DummyDb.toptamilmovie[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column comedymovies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Comedy movies',
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
                  imageurl: DummyDb.comedymovie[index]['imageurl']),
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

  Column tvshowsintamil() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'TV shows in Tamil',
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
                'Movies in Tamil',
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
                    image: NetworkImage(ImageConstants.tamillanguagecard))),
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
                'Watch in\nTamil',
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
