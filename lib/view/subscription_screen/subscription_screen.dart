import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prime_video_ui_clone/dummy_db.dart';
import 'package:prime_video_ui_clone/utils/constants/color_constants.dart';
import 'package:prime_video_ui_clone/utils/constants/image_constants.dart';
import 'package:prime_video_ui_clone/view/global_widget/moviecardprime.dart';
import 'package:prime_video_ui_clone/view/subscription_screen/widgets/animecard.dart';
import 'package:prime_video_ui_clone/view/subscription_screen/widgets/moviecardchaupal.dart';
import 'package:prime_video_ui_clone/view/subscription_screen/widgets/moviecarddiscoverplus.dart';
import 'package:prime_video_ui_clone/view/subscription_screen/widgets/moviecarderos.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          appbar(),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              color: ColorConstants.blackcolor,
              height: 5360,
              child: Column(
                children: [
                  discoveryplusmostpopular(),
                  SizedBox(height: 18),
                  subscriptionyoulike(),
                  SizedBox(height: 18),
                  top10subscriptions(),
                  SizedBox(height: 18),
                  popularanime(),
                  SizedBox(height: 18),
                  recommendedwithsubscription(),
                  SizedBox(height: 18),
                  animesrecentlyadded(),
                  SizedBox(height: 18),
                  chaupalrecentlyadded(),
                  SizedBox(height: 18),
                  animaxgemmostpopular(),
                  SizedBox(height: 18),
                  mgmrecentlyadded(),
                  SizedBox(height: 18),
                  erosmostpoluar(),
                  SizedBox(height: 18),
                  chaupalmostpopular(),
                  SizedBox(height: 18),
                  vrottmostpopular(),
                  SizedBox(height: 18),
                  liongateplay(),
                  SizedBox(height: 18),
                  crunchyroll(),
                  SizedBox(height: 18),
                  mubimostpopular(),
                  SizedBox(height: 18),
                  hoichoirecentlyadded(),
                  SizedBox(height: 18),
                  manormamaxrecentlyadded(),
                  SizedBox(height: 18),
                  bbcplayer(),
                  SizedBox(height: 18),
                  bbckidsmostpopular(),
                  SizedBox(height: 18),
                  sonypicturestream(),
                  SizedBox(height: 18),
                  museumtv(),
                  SizedBox(height: 18),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              'iwonder: Most popular',
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
                          itemCount: DummyDb.iwonderlist.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Moviecardprime(
                                removeicon: true,
                                imageurl: DummyDb.iwonderlist[index]
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
    );
  }

  Column museumtv() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Museum TV: Most popular',
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
            itemCount: DummyDb.museumtvmsotpopular.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.museumtvmsotpopular[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column sonypicturestream() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Sony picture - Stream: Recently',
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
                    'added',
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
            itemCount: DummyDb.sonypicture.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.sonypicture[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column bbckidsmostpopular() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'BBC Kids: Most popular',
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
            itemCount: DummyDb.bbckids.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.bbckids[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column bbcplayer() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'BBC player: Most popular',
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
            itemCount: DummyDb.bbcplayer.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.bbcplayer[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column manormamaxrecentlyadded() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'ManormaMAX: Most popular',
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
            itemCount: DummyDb.manoramaMax.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.manoramaMax[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column hoichoirecentlyadded() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'hoichoi: Recently added',
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
            itemCount: DummyDb.hoichoi.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.hoichoi[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column mubimostpopular() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'MUBI: Most popular',
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
            itemCount: DummyDb.Mubilist.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.Mubilist[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column crunchyroll() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Crunchyroll: Most popular',
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
            itemCount: DummyDb.crunchyroll.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.crunchyroll[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column liongateplay() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Liongate play: Mostpopular',
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
            itemCount: DummyDb.liongatesplay.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.liongatesplay[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column vrottmostpopular() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'VROTT: Most popular',
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
            itemCount: DummyDb.vrottmostpopular.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.vrottmostpopular[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column chaupalmostpopular() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Chaupal: Most popular, Special offer',
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
                    '₹599/year',
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
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            itemCount: DummyDb.chaupalmostpopular.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: moviecardchaupal(
                imageurl: DummyDb.chaupalmostpopular[index]['imageurl'],
              ),
            ),
          ),
        )
      ],
    );
  }

  Column erosmostpoluar() {
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
              size: 15,
              color: ColorConstants.whitecolor,
            )
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            itemCount: DummyDb.erosmovieslist.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecarderos(
                imageurl: DummyDb.erosmovieslist[index]['imageurl'],
              ),
            ),
          ),
        )
      ],
    );
  }

  Column mgmrecentlyadded() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'MGM +: Recently added',
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
            itemCount: DummyDb.mgmrecentlyadded.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.mgmrecentlyadded[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column animaxgemmostpopular() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Animax + GEM: Most popular',
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
            itemCount: DummyDb.animaxgem.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Moviecardprime(
                  removeicon: true,
                  imageurl: DummyDb.animaxgem[index]['imageurl']),
            ),
          ),
        )
      ],
    );
  }

  Column chaupalrecentlyadded() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Chaupal: Recently added',
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
            itemCount: DummyDb.chaupalrecentlyadded.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: moviecardchaupal(
                imageurl: DummyDb.chaupalrecentlyadded[index]['imageurl'],
              ),
            ),
          ),
        )
      ],
    );
  }

  Column animesrecentlyadded() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Anime Times: Recently added',
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
            itemCount: DummyDb.animerecentlyadded.length,
            itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 16),
                child: animecard(
                  imageurl: DummyDb.animerecentlyadded[index]['imageurl'],
                )),
          ),
        )
      ],
    );
  }

  Column recommendedwithsubscription() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Recommended with a subscription',
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
            itemCount: DummyDb.recommendedwithsubcription.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                width: 270,
                height: 180,
                decoration: BoxDecoration(color: ColorConstants.blackcolor),
                child: Moviecarddiscoveryplus(
                  imageurl: DummyDb.recommendedwithsubcription[index]
                      ['imageurl'],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Column popularanime() {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Anime Times popular Anime now at',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
            SizedBox(width: 4),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Text(
                    '₹39/month',
                    style: TextStyle(
                        color: ColorConstants.whitecolor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: ColorConstants.whitecolor,
                    size: 18,
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 177,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyDb.animelist.length,
            itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 16),
                child: animecard(
                  imageurl: DummyDb.animelist[index]['imageurl'],
                )),
          ),
        )
      ],
    );
  }

  Column discoveryplusmostpopular() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'discovery+: Most popular',
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
              child: Container(
                width: 270,
                height: 180,
                decoration: BoxDecoration(color: ColorConstants.blackcolor),
                child: Moviecarddiscoveryplus(
                  imageurl: DummyDb.discoveryplusmovies[index]['imageurl'],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Column top10subscriptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                'Top 10 with subscriptions',
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
            itemCount: DummyDb.top10subscription.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                width: 290,
                height: 170,
                decoration: BoxDecoration(color: ColorConstants.blackcolor),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                height: 140,
                                width: 250,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            DummyDb.top10subscription[index]
                                                ['imageurl']))),
                              ),
                            )
                          ],
                        ),
                        Positioned(
                            left: 4,
                            top: 16,
                            child: Text(DummyDb.top10subscription[index]['num'],
                                style: GoogleFonts.delaGothicOne(
                                    color: ColorConstants.whitecolor,
                                    fontSize: 82))),
                        Positioned(
                            right: 2,
                            bottom: 12,
                            child: Text(
                                DummyDb.top10subscription[index]['text'],
                                style: GoogleFonts.delaGothicOne(
                                    color: ColorConstants.whitecolor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 8)))
                      ],
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 34),
                      child: Row(
                        children: [
                          Icon(
                            Icons.shopping_bag,
                            color: ColorConstants.yellowcolor,
                            size: 22,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Subscribe',
                            style: TextStyle(color: ColorConstants.whitecolor),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Column subscriptionyoulike() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'subscription you might like',
                style: TextStyle(
                    color: ColorConstants.whitecolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
            // SizedBox(width: 4),
            // Icon(
            //   Icons.arrow_forward_ios,
            //   color: ColorConstants.whitecolor,
            //   size: 18,
            // )
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
              child: Container(
                width: 270,
                height: 177,
                decoration: BoxDecoration(color: ColorConstants.blackcolor),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            DummyDb.subscriptionyoulike[index]['imageurl'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        Icon(
                          Icons.shopping_bag,
                          color: ColorConstants.yellowcolor,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Subscribe',
                          style: TextStyle(
                              fontSize: 16,
                              color: ColorConstants.whitecolor,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  SliverAppBar appbar() {
    return SliverAppBar(
      backgroundColor: ColorConstants.transparentcolor.withOpacity(0.95),
      title: Text(
        'Subscriptions',
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: ColorConstants.whitecolor),
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
    );
  }
}
