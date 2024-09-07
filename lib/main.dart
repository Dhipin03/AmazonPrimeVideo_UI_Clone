import 'package:flutter/material.dart';
import 'package:prime_video_ui_clone/project/routes/app_routeconfig.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouteconfig appRouteconfig = AppRouteconfig();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: appRouteconfig.router1.routerDelegate,
      routeInformationParser: appRouteconfig.router1.routeInformationParser,
      routeInformationProvider: appRouteconfig.router1.routeInformationProvider,
    );
  }
}
