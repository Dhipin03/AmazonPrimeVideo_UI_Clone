import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/dummy_db.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';
import 'package:prime_video_ui_clone/view/global_widget/moviecardprime.dart';
import 'package:prime_video_ui_clone/view/global_widget/moviecardrent.dart';

class Hindlanguagescreen extends StatefulWidget {
  const Hindlanguagescreen({super.key});

  @override
  State<Hindlanguagescreen> createState() => _HindlanguagescreenState();
}

class _HindlanguagescreenState extends State<Hindlanguagescreen> {
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
              height: 2600,
              color: ColorConstants.blackcolor,
              child: Column(
                children: [
                  languagecard(),
                  SizedBox(height: 18),
                  movies(),
                  SizedBox(height: 18),
                  amazonorginalseries(),
                  SizedBox(height: 18),
                  recentlyaddedmovie(),
                  SizedBox(height: 18),
                  moviesdubbed(),
                  SizedBox(height: 18),
                  topratedhmoviesonimdb(),
                  SizedBox(height: 18),
                  popularshows(),
                  SizedBox(height: 18),
                  comedymovies(),
                  SizedBox(height: 18),
                  erosmostpopular(),
                  SizedBox(height: 18),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              'Shop: Popular Hindi Movies to Rent',
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
                            child: Moviecardrent(
                                text: 'Rent',
                                imageurl: DummyDb.popularhindimovies[index]
                                    ['imageurl']),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
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

  Column erosmostpopular() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Eros Now: Most popular',
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
                  imageurl: DummyDb.erosmovieslist[index]['imageurl']),
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

  Column popularshows() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'miniTV - Most popular shows - Free',
                    style: TextStyle(
                        color: ColorConstants.whitecolor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'with ads',
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
            itemCount: DummyDb.horrormovielist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.topratedshows[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column topratedhmoviesonimdb() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Top rated Hindi movies on IMDb',
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
                  imageurl: DummyDb.topratedhindimovies[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column moviesdubbed() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Movies dubbed in Hindi',
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
                  imageurl: DummyDb.topratedmovies[index]['imageurl']),
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
                  removeicon: true,
                  imageurl: DummyDb.topmovies[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column amazonorginalseries() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Amazon Original series',
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
                  imageurl: DummyDb.toptvlist[index]['imageurl']),
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
                    image: NetworkImage(ImageConstants.hindilanguagecard))),
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
                'Watch in\nHindi',
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

  Column movies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Movies in Hindi',
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
                  imageurl: DummyDb.hindimovies[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }
}
