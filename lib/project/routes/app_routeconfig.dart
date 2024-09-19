import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prime_video_ui_clone/view/bottom_navbar/bottomnavbar.dart';
import 'package:prime_video_ui_clone/view/auto_download_screen/autodownload_screen.dart';

class AppRouteconfig {
  GoRouter router1 = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: "bottomnavbarscreen",
        pageBuilder: (context, state) {
          return MaterialPage(child: Bottomnavbarscreen());
        },
      ),
      GoRoute(
        path: '/autodownload',
        name: "autodownloadscreen",
        pageBuilder: (context, state) {
          return MaterialPage(child: Autodownloadscreen());
        },
      ),
    ],
    initialLocation: '/',
  );
}
