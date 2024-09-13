import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/dummy_db.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';
import 'package:prime_video_ui_clone/view/global_widget/gloablwidget.dart';
import 'package:prime_video_ui_clone/view/global_widget/moviecardprime.dart';
import 'package:prime_video_ui_clone/view/global_widget/moviecardrent.dart';
import 'package:prime_video_ui_clone/view/global_widget/primesubscriptioncard.dart';
import 'package:prime_video_ui_clone/view/global_widget/top10_movecard.dart';
import 'package:prime_video_ui_clone/view/home_screen/widgets/languagecard.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Primescreen extends StatelessWidget {
  const Primescreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController _pagecontroller = PageController();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          appbar(),
          SliverToBoxAdapter(
            child: Container(
              height: 8300,
              decoration: BoxDecoration(color: ColorConstants.blackcolor),
              child: Column(
                children: [
                  mainmoviescreen(_pagecontroller),
                  SizedBox(height: 18),
                  storiesfromheartland(),
                  SizedBox(height: 18),
                  tvshowyoulike(),
                  SizedBox(height: 18),
                  watchinyourlanguage(),
                  SizedBox(height: 18),
                  topratedmovies(),
                  SizedBox(height: 18),
                  latestmovie(),
                  SizedBox(height: 18),
                  tvshowslikes(),
                  SizedBox(height: 18),
                  amazonorginalseries(),
                  SizedBox(height: 18),
                  topmovies(),
                  SizedBox(height: 18),
                  dramamovies(),
                  SizedBox(height: 18),
                  dramatv(),
                  SizedBox(height: 18),
                  mysterythrillermovies(),
                  SizedBox(height: 18),
                  horrormovies(),
                  SizedBox(height: 18),
                  recommendedmovies(),
                  SizedBox(height: 18),
                  romanticcomedies(),
                  SizedBox(height: 18),
                  amazonoriginalmovies(),
                  SizedBox(height: 18),
                  comedymovies(),
                  SizedBox(height: 18),
                  actionadventuremovies(),
                  SizedBox(height: 18),
                  historicalmovies(),
                  SizedBox(height: 18),
                  kidsandfamilymovies(),
                  SizedBox(height: 18),
                  hitsyoucannotmiss(),
                  SizedBox(height: 18),
                  top10movies(),
                  SizedBox(height: 18),
                  standupspecials(),
                  SizedBox(height: 18),
                  worldcinema(),
                  SizedBox(height: 18),
                  sciencefiction(),
                  SizedBox(height: 18),
                  sportstvandmovies(),
                  SizedBox(height: 18),
                  westernmovies(),
                  SizedBox(height: 18),
                  sportsmovies(),
                  SizedBox(height: 18),
                  recentlyaddedmovies(),
                  SizedBox(height: 18),
                  documentarytv(),
                  SizedBox(height: 18),
                  sciencefictiontv(),
                  SizedBox(height: 18),
                  unscriptedtv(),
                  SizedBox(height: 18),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              'Action and adventure TV',
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
                          itemCount: DummyDb.actionadventuretv.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Moviecardprime(
                                removeicon: true,
                                imageurl: DummyDb.actionadventuretv[index]
                                    ['imageurl']),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 18),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              'Throwback TV',
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
                          itemCount: DummyDb.throwback1.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Moviecardprime(
                                removeicon: true,
                                imageurl: DummyDb.throwback1[index]
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
      )),
    );
  }

  Column documentarytv() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Documentary TV',
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
            itemCount: DummyDb.documentarytv.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.documentarytv[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column sciencefictiontv() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Science fiction TV',
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
            itemCount: DummyDb.sciencefictiontv.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.sciencefictiontv[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column unscriptedtv() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Unscripted TV',
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
              size: 16,
            )
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            itemCount: DummyDb.unscriptedtv.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.unscriptedtv[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column recentlyaddedmovies() {
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
              size: 20,
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
              child: Moviecardprime(
                  imageurl: DummyDb.latestmovielist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column sportsmovies() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text(
                'Sports Movie',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: ColorConstants.whitecolor),
              ),
              SizedBox(width: 4),
              Icon(
                Icons.arrow_forward_ios,
                color: ColorConstants.whitecolor,
                size: 16,
              )
            ],
          ),
        ),
        SizedBox(height: 12),
        SizedBox(
            height: 177,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: DummyDb.sportsmovielist.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Moviecardprime(
                    removeicon: true,
                    imageurl: DummyDb.sportsmovielist[index]['imageurl']),
              ),
            ))
      ],
    );
  }

  Column westernmovies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Western movie',
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
            itemCount: DummyDb.westernmovielist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.westernmovielist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column sportstvandmovies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Sports Tv and movies',
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
            itemCount: DummyDb.sportsmovie.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.sportsmovie[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column sciencefiction() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Science fiction movies',
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
            itemCount: DummyDb.scifictionmovielist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  imageurl: DummyDb.scifictionmovielist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column worldcinema() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Best of world cinema',
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
              size: 16,
            )
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            itemCount: DummyDb.worldcinemlist.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.worldcinemlist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column standupspecials() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Stand-up Specials',
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
            itemCount: DummyDb.standupcomedylist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.standupcomedylist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column top10movies() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                'Top 10 in India',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: ColorConstants.whitecolor),
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 170,
          child: ListView.builder(
            itemCount: DummyDb.topmovielist.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Top10mviecard(
                removeicon: true,
                num: DummyDb.topmovielist[index]['num'],
                imageurl: DummyDb.topmovielist[index]['imageurl'],
              ),
            ),
          ),
        )
      ],
    );
  }

  Column hitsyoucannotmiss() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text(
                "Hits you cannot miss",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: ColorConstants.whitecolor),
              ),
              // SizedBox(width: 4),
              // Icon(
              //   Icons.arrow_forward_ios,
              //   color: ColorConstants.whitecolor,
              //   size: 16,
              // )
            ],
          ),
        ),
        SizedBox(height: 12),
        SizedBox(
            height: 177,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: DummyDb.watchbeforegonelist.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Moviecardprime(
                    removeicon: true,
                    imageurl: DummyDb.watchbeforegonelist[index]['imageurl']),
              ),
            ))
      ],
    );
  }

  Column kidsandfamilymovies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Kids and family movies',
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
            itemCount: DummyDb.kidsanfamilymovies.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.kidsanfamilymovies[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column historicalmovies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Historical movie',
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
            itemCount: DummyDb.historicalmovielist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.historicalmovielist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column actionadventuremovies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Action and adventure movies',
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
              size: 16,
            )
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            itemCount: DummyDb.actionadventuremovielist.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.actionadventuremovielist[index]
                      ['imageurl']),
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
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(width: 4),
            Icon(
              Icons.arrow_forward_ios,
              color: ColorConstants.whitecolor,
              size: 20,
            )
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.comedymovielist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.comedymovielist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column amazonoriginalmovies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Amazon Orginal movies',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: ColorConstants.whitecolor,
            )
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 326,
          child: ListView.builder(
            itemCount: DummyDb.amazonserieslist2.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Primesubscriptioncard(
                removeicon: true,
                imageurl: DummyDb.amazonserieslist2[index]['imageurl'],
              ),
            ),
          ),
        )
      ],
    );
  }

  Column romanticcomedies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Romantic Comedies',
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
            itemCount: DummyDb.romanticcomedy.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.romanticcomedy[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column recommendedmovies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Recommended movies',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.recommnededmovieslist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  imageurl: DummyDb.recommnededmovieslist[index]['imageurl']),
            ),
          ),
        ),
      ],
    );
  }

  Column horrormovies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Horrror movie',
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
                  imageurl: DummyDb.horrormovielist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column mysterythrillermovies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Mystery and thriller movies',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(width: 4),
            Icon(
              Icons.arrow_forward_ios,
              color: ColorConstants.whitecolor,
              size: 16,
            )
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.mysterythrillermovielist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.mysterythrillermovielist[index]
                      ['imageurl']),
            ),
          ),
        ),
      ],
    );
  }

  Column dramamovies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Drama movies',
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
            itemCount: DummyDb.dramamovies.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.dramamovies[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column dramatv() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Drama TV',
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
            itemCount: DummyDb.dramatv.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                imageurl: DummyDb.dramatv[index]['imageurl'],
                removeicon: true,
              ),
            ),
          ),
        )
      ],
    );
  }

  Column topmovies() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Top movies',
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
            itemCount: DummyDb.topmovies.length,
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
                'Amazon Orginal series ',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: ColorConstants.whitecolor,
            )
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 326,
          child: ListView.builder(
            itemCount: DummyDb.primesubscriptionlist.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Primesubscriptioncard(
                removeicon: true,
                imageurl: DummyDb.primesubscriptionlist[index]['imageurl'],
              ),
            ),
          ),
        )
      ],
    );
  }

  Column tvshowslikes() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "TV shows we think you'll like",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: ColorConstants.whitecolor),
              ),
            )
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.showlikelist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.showlikelist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column latestmovie() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text(
                "Latest movies",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: ColorConstants.whitecolor),
              ),
              SizedBox(width: 4),
              Icon(
                Icons.arrow_forward_ios,
                color: ColorConstants.whitecolor,
                size: 16,
              )
            ],
          ),
        ),
        SizedBox(height: 12),
        SizedBox(
            height: 177,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: DummyDb.latestmovies.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Moviecardrent(
                        text: 'Rent',
                        imageurl: DummyDb.latestmovies[index]['imageurl'],
                      ),
                    )))
      ],
    );
  }

  Column topratedmovies() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text(
                "Shop: Top-rated IMDb movies",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: ColorConstants.whitecolor),
              ),
              SizedBox(width: 4),
              Icon(
                Icons.arrow_forward_ios,
                color: ColorConstants.whitecolor,
                size: 16,
              )
            ],
          ),
        ),
        SizedBox(height: 12),
        SizedBox(
            height: 177,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: DummyDb.topratedmovies.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Moviecardrent(
                        text: 'Subscribe or rent',
                        imageurl: DummyDb.topratedmovies[index]['imageurl'],
                      ),
                    )))
      ],
    );
  }

  Column watchinyourlanguage() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Watch in Your Language',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: ColorConstants.whitecolor,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 140,
          child: ListView.builder(
            itemCount: DummyDb.languagelist.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: languagecard(
                imageurl: DummyDb.languagelist[index]['imageurl'],
                lang: DummyDb.languagelist[index]['lang'],
                text: DummyDb.languagelist[index]['text'],
              ),
            ),
          ),
        )
      ],
    );
  }

  Column tvshowyoulike() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "TV shows we think you'll like",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: ColorConstants.whitecolor),
              ),
            )
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.showlikelist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.showlikelist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column storiesfromheartland() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Stories from the heartland',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
            SizedBox(width: 4),
            Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: ColorConstants.whitecolor,
            )
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            itemCount: DummyDb.storiesfromheartland.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                removeicon: true,
                imageurl: DummyDb.storiesfromheartland[index]['imageurl'],
              ),
            ),
          ),
        )
      ],
    );
  }

  Column mainmoviescreen(PageController _pagecontroller) {
    return Column(
      children: [
        SizedBox(
          height: 260,
          child: PageView.builder(
            controller: _pagecontroller,
            itemCount: DummyDb.mainmovieposterlist.length,
            itemBuilder: (context, index) => mainmovieposter_card(
              imageurl: DummyDb.mainmovieposterlist[index]['imageurl'],
            ),
          ),
        ),
        SizedBox(height: 13),
        SmoothPageIndicator(
          controller: _pagecontroller,
          count: DummyDb.mainmovieposterlist.length,
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

  SliverAppBar appbar() {
    return SliverAppBar(
      snap: true,
      floating: true,
      backgroundColor: ColorConstants.transparentcolor.withOpacity(0.9),
      title: Image.asset(ImageConstants.primeicon),
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
          Tab(
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
