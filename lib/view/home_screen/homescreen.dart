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
import 'package:prime_video_ui_clone/view/home_screen/widgets/moviecardminitv.dart';
import 'package:prime_video_ui_clone/view/home_screen/widgets/videopreviewwidget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  PageController _pagecontroller = PageController();
  PageController _pagecontroller1 = PageController();
  @override
  void initState() {
    super.initState();

    _pagecontroller.addListener(() {
      if (_pagecontroller.page! >= DummyDb.mainmovieposterlist.length - 1) {
        Future.delayed(Duration(milliseconds: 1), () {
          _pagecontroller.animateToPage(
            0,
            duration: Duration(milliseconds: 1),
            curve: Curves.easeInOut,
          );
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            appbar_section(),
            SliverToBoxAdapter(
              child: Container(
                height: 9350,
                decoration: BoxDecoration(color: ColorConstants.blackcolor),
                child: Column(
                  children: [
                    mainmovieposter_section(),
                    SizedBox(height: 13),
                    smoothpageindicator_section(),
                    SizedBox(height: 18),
                    trendingnow_section(),
                    SizedBox(height: 18),
                    watchinyourlanguage_section(),
                    SizedBox(height: 18),
                    storiefromtheheartland_section(),
                    SizedBox(height: 18),
                    featurepreview_section(),
                    SizedBox(height: 18),
                    amazonOrginalMovie_section(),
                    SizedBox(height: 18),
                    blockbusterdubbedmovie_section(),
                    SizedBox(height: 18),
                    dubbedActionMovie_section(),
                    SizedBox(height: 18),
                    latestMovie_section(),
                    SizedBox(height: 18),
                    standupspecials(),
                    SizedBox(height: 18),
                    romanticShows_section(),
                    SizedBox(height: 18),
                    comedymovie_section(),
                    SizedBox(height: 18),
                    koreanromanticmovie_section(),
                    SizedBox(height: 18),
                    tvshowslike_section(),
                    SizedBox(height: 18),
                    mysterythrillermovie_section(),
                    SizedBox(height: 18),
                    toptv_section(),
                    SizedBox(height: 18),
                    recommendedtv_section(),
                    SizedBox(height: 18),
                    mandarindramas(),
                    SizedBox(height: 18),
                    actionandadventuremovie_section(),
                    SizedBox(height: 18),
                    worldcinema_section(),
                    SizedBox(height: 18),
                    asiandrama_section(),
                    SizedBox(height: 18),
                    dramatv_section(),
                    SizedBox(height: 18),
                    topmovies_section(),
                    SizedBox(height: 18),
                    sciencefiction_section(),
                    SizedBox(height: 18),
                    horrormovie_section(),
                    SizedBox(height: 18),
                    amazonorginalmovies(),
                    SizedBox(height: 18),
                    historicalmovies(),
                    SizedBox(height: 18),
                    westernmoviesection(),
                    SizedBox(height: 18),
                    sportsmovies(),
                    SizedBox(height: 18),
                    top10movies(),
                    SizedBox(height: 18),
                    foreignlanguageshows(),
                    SizedBox(height: 18),
                    kidsandfamilymovies(),
                    SizedBox(height: 18),
                    hitmovies(),
                    SizedBox(height: 18),
                    watchbeforetheygone(),
                    SizedBox(height: 18),
                    shopactionadventuremovies(),
                    SizedBox(height: 18),
                    shopdocumentaries(),
                    SizedBox(height: 18),
                    recommendedmovietorent(),
                    SizedBox(height: 18),
                    shophistoricalmovie(),
                    SizedBox(height: 18),
                    topratedmovie(),
                    SizedBox(height: 18),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
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

  Column amazonorginalmovies() {
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

  Column topratedmovie() {
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
                        text: 'Rent',
                        imageurl: DummyDb.topratedmovies[index]['imageurl'],
                      ),
                    )))
      ],
    );
  }

  Column shophistoricalmovie() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text(
                "Shop: Historical movies",
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
                itemCount: DummyDb.historicalmovies.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Moviecardrent(
                        text: 'Rent',
                        imageurl: DummyDb.historicalmovies[index]['imageurl'],
                      ),
                    )))
      ],
    );
  }

  Column recommendedmovietorent() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text(
                "Shop: Recommended Movies to Rent",
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
                itemCount: DummyDb.recommnededmovies.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Moviecardrent(
                        text: 'Rent',
                        imageurl: DummyDb.recommnededmovies[index]['imageurl'],
                      ),
                    )))
      ],
    );
  }

  Column shopdocumentaries() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text(
                "Shop: Documnentaries",
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
                itemCount: DummyDb.documentaries.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Moviecardrent(
                        text: 'Rent',
                        imageurl: DummyDb.documentaries[index]['imageurl'],
                      ),
                    )))
      ],
    );
  }

  Column shopactionadventuremovies() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text(
                "Shop: Action and adventure movies",
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
                itemCount: DummyDb.watchbeforegonelist.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Moviecardrent(
                        text: 'Rent',
                        imageurl: DummyDb.actionadventure[index]['imageurl'],
                      ),
                    )))
      ],
    );
  }

  Column watchbeforetheygone() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text(
                "Watch before they're gone",
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
              itemCount: DummyDb.watchbeforegonelist.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Moviecardprime(
                    imageurl: DummyDb.watchbeforegonelist[index]['imageurl']),
              ),
            ))
      ],
    );
  }

  Column hitmovies() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text(
                'Hits you cannot miss',
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
              itemCount: DummyDb.hitmovieslist.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Moviecardprime(
                    imageurl: DummyDb.hitmovieslist[index]['imageurl']),
              ),
            ))
      ],
    );
  }

  Column foreignlanguageshows() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text(
                'Foreign language TV shows',
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
              itemCount: DummyDb.foreignlanguageshows.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Moviecardprime(
                    imageurl: DummyDb.foreignlanguageshows[index]['imageurl']),
              ),
            ))
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
                num: DummyDb.topmovielist[index]['num'],
                imageurl: DummyDb.topmovielist[index]['imageurl'],
              ),
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
                    imageurl: DummyDb.sportsmovielist[index]['imageurl']),
              ),
            ))
      ],
    );
  }

  Column westernmoviesection() {
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
                  imageurl: DummyDb.westernmovielist[index]['imageurl']),
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
                  imageurl: DummyDb.historicalmovielist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column horrormovie_section() {
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
                  imageurl: DummyDb.horrormovielist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column sciencefiction_section() {
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

  Column topmovies_section() {
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
                  imageurl: DummyDb.topmovies[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column dramatv_section() {
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
              child:
                  Moviecardprime(imageurl: DummyDb.dramatv[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column asiandrama_section() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('MiniTV - popular Asian dramas - free',
                  style: TextStyle(
                      color: ColorConstants.whitecolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
              Row(
                children: [
                  Text(
                    'with ads',
                    style: TextStyle(
                        color: ColorConstants.whitecolor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: ColorConstants.whitecolor,
                    size: 16,
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.asiandramas.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: moviecardminitv(
                  imageurl: DummyDb.asiandramas[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column worldcinema_section() {
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
                  imageurl: DummyDb.worldcinemlist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column actionandadventuremovie_section() {
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
                  imageurl: DummyDb.actionadventuremovielist[index]
                      ['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column mandarindramas() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New in mandarin dramas - free with',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Text(
                    'ads',
                    style: TextStyle(
                        color: ColorConstants.whitecolor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: ColorConstants.whitecolor,
                    size: 16,
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 140,
          child: ListView.builder(
            itemCount: DummyDb.mandranilist.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: moviecardminitv(
                  imageurl: DummyDb.mandranilist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column recommendedtv_section() {
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

  Column toptv_section() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Top Tv',
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
            itemCount: DummyDb.toptvlist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  imageurl: DummyDb.toptvlist[index]['imageurl']),
            ),
          ),
        ),
      ],
    );
  }

  Column mysterythrillermovie_section() {
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
                  imageurl: DummyDb.mysterythrillermovielist[index]
                      ['imageurl']),
            ),
          ),
        ),
      ],
    );
  }

  Column tvshowslike_section() {
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
                  imageurl: DummyDb.showlikelist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column koreanromanticmovie_section() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Korean romantic movie - free with\nads',
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
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.koreanromanticmovielist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: moviecardminitv(
                  imageurl: DummyDb.koreanromanticmovielist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column comedymovie_section() {
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
                  imageurl: DummyDb.comedymovielist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column romanticShows_section() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'miniTV - Romantic shows - Free with\nads',
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
          height: 140,
          child: ListView.builder(
            itemCount: DummyDb.romanticshowslist.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: moviecardminitv(
                  imageurl: DummyDb.romanticshowslist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column latestMovie_section() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Latest movies',
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

  Column dubbedActionMovie_section() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'miniTV - Dubbed Action Movies -',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Row(
                children: [
                  Text('Watch free with Ads',
                      style: TextStyle(
                          color: ColorConstants.whitecolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18)),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: ColorConstants.whitecolor,
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 140,
          child: ListView.builder(
            itemCount: DummyDb.dubbedactionmovielist.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: moviecardminitv(
                  imageurl: DummyDb.dubbedactionmovielist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column blockbusterdubbedmovie_section() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'miniTV - Blockbuster dubbed movies -\nFree with Ads',
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
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.blockbusterdubbedmovielist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: moviecardminitv(
                  imageurl: DummyDb.blockbusterdubbedmovielist[index]
                      ['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column featurepreview_section() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Feature previews',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: _pagecontroller1,
            itemCount: DummyDb.videopreviewlist.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: VideoPreviewWidget(
                imageurl: DummyDb.videopreviewlist[index]['imageurl'],
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        SmoothPageIndicator(
          controller: _pagecontroller1,
          count: DummyDb.videopreviewlist.length,
          effect: ScrollingDotsEffect(
              dotHeight: 6,
              dotWidth: 6,
              activeDotColor: ColorConstants.whitecolor),
        )
      ],
    );
  }

  Column amazonOrginalMovie_section() {
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
                imageurl: DummyDb.primesubscriptionlist[index]['imageurl'],
              ),
            ),
          ),
        )
      ],
    );
  }

  Column storiefromtheheartland_section() {
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
                imageurl: DummyDb.storiesfromheartland[index]['imageurl'],
              ),
            ),
          ),
        )
      ],
    );
  }

  Column watchinyourlanguage_section() {
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

  SliverAppBar appbar_section() {
    return SliverAppBar(
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
      title: Image.asset(ImageConstants.primevideoimg, width: 102),
      backgroundColor: ColorConstants.transparentcolor.withOpacity(0.9),
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
          Tab(
            child: Container(
              width: 90,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: ColorConstants.greycolor),
              ),
              child: Center(
                child: Text("Live TV"),
              ),
            ),
          ),
        ],
        tabAlignment: TabAlignment.start,
      ),
    );
  }

  SizedBox mainmovieposter_section() {
    return SizedBox(
      height: 260,
      child: PageView.builder(
        controller: _pagecontroller,
        itemCount: DummyDb.mainmovieposterlist.length,
        itemBuilder: (context, index) => mainmovieposter_card(
          imageurl: DummyDb.mainmovieposterlist[index]['imageurl'],
        ),
      ),
    );
  }

  Column trendingnow_section() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Watch for Free - Trending shows",
                style: TextStyle(
                  color: ColorConstants.whitecolor,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(width: 4),
            Icon(
              Icons.arrow_forward_ios,
              color: ColorConstants.whitecolor,
              size: 15,
            ),
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.trendingshowlist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: moviecardminitv(
                imageurl: DummyDb.trendingshowlist[index]['imageurl'],
              ),
            ),
          ),
        ),
      ],
    );
  }

  SmoothPageIndicator smoothpageindicator_section() {
    return SmoothPageIndicator(
      controller: _pagecontroller,
      count: 8,
      effect: ScrollingDotsEffect(
        dotWidth: 6,
        dotHeight: 4,
        activeDotColor: ColorConstants.whitecolor,
        dotColor: ColorConstants.greycolor,
      ),
    );
  }
}
