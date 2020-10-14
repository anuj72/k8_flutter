import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  final Widget verysmallScreen;
  const ResponsiveLayout(
      {Key key,
      @required this.largeScreen,
      this.mediumScreen,
      this.smallScreen,this.verysmallScreen})
      : super(key: key);

  static bool isVerySmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 600 &&
        MediaQuery.of(context).size.width < 900;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 900 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 900;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return largeScreen;
        } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 900) {
          return mediumScreen ?? largeScreen;
        }
        else if (constraints.maxWidth < 900 && constraints.maxWidth > 600) {
          return smallScreen ?? mediumScreen;
        }
        else {
          return verysmallScreen ?? smallScreen;
        }
      },
    );
  }
}
