import 'package:flutter/material.dart';

import 'constants/route_names.dart';
import 'pages/syllabush_page.dart';
import 'pages/home_page.dart';
import 'pages/settings_page.dart';
import 'pages/slideshow_page.dart';
import 'widgets/app_route_observer.dart';


class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'K8 School',
      theme: ThemeData(
        primarySwatch: Colors.blue,
          fontFamily: 'poppins',
        pageTransitionsTheme: PageTransitionsTheme(
          // makes all platforms that can run Flutter apps display routes without any animation
          builders: Map<TargetPlatform,
              _InanimatePageTransitionsBuilder>.fromIterable(
              TargetPlatform.values.toList(),
              key: (dynamic k) => k,
              value: (dynamic _) => const _InanimatePageTransitionsBuilder()),
        ),
      ),
      initialRoute: RouteNames.home,
      navigatorObservers: [AppRouteObserver()],
      routes: {
        RouteNames.home: (_) =>  HomePage(),
        RouteNames.syllabusPage: (_) =>  SyllabusPage(),
        RouteNames.slideshow: (_) => const SlideshowPage(),
        RouteNames.settings: (_) => const SettingsPage()
      },
    );
  }
}

/// This class is used to build page transitions that don't have any animation
class _InanimatePageTransitionsBuilder extends PageTransitionsBuilder {
  const _InanimatePageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return child;
  }
}
