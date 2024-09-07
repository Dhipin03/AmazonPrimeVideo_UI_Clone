import 'package:flutter/material.dart';

class moviecardminitv extends StatelessWidget {
  String imageurl;
  moviecardminitv({super.key, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 270,
          height: 140,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage("$imageurl")),
              borderRadius: BorderRadius.circular(12)),
        ),
        Positioned(
            right: 4,
            bottom: 8,
            child: Image.asset(
              'assets/images/minitv.png',
              width: 55,
            ))
      ],
    );
  }
}
