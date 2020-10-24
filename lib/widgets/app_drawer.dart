import 'package:flutter/material.dart';
import 'package:k8/utils/responsiveLayout.dart';

import '../constants/page_titles.dart';
import '../constants/route_names.dart';
import 'app_route_observer.dart';

/// The navigation drawer for the app.
/// This listens to changes in the route to update which page is currently been shown
class AppDrawer extends StatefulWidget {
  const AppDrawer({@required this.permanentlyDisplay, Key key})
      : super(key: key);

  final bool permanentlyDisplay;

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> with RouteAware {
  String _selectedRoute;
  AppRouteObserver _routeObserver;
  @override
  void initState() {
    super.initState();
    _routeObserver = AppRouteObserver();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _routeObserver.subscribe(this, ModalRoute.of(context));
  }

  @override
  void dispose() {
    _routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    _updateSelectedRoute();
  }

  @override
  void didPop() {
    _updateSelectedRoute();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:  ResponsiveLayout.isVerySmallScreen(context)
          ? 260
          : ResponsiveLayout.isSmallScreen(context)
          ? 260
          : ResponsiveLayout.isMediumScreen(context)
          ? 260
          : 280,
      child: Drawer(
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      child: Container(

                        child: Column(
                          children: [
                            CircleAvatar(
                              child: Padding(
                                child: (Image.asset('assets/images/k8.png')),
                                padding: EdgeInsets.all(20),
                              ),
                              radius: 45,
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                'K8 School',
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Text(
                              '',
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[Colors.blueAccent, Colors.purpleAccent],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                      ),
                    ),
                    ListTile(
                      leading:  Icon(Icons.home),
                      title:  Text(PageTitles.home),
                      onTap: () async {
                        await _navigateTo(context, RouteNames.home);
                      },
                      selected: _selectedRoute == RouteNames.home,
                    ),
                    ListTile(
                      leading:  Icon(Icons.school),
                      title:  Text(PageTitles.opted_subjects),
                      onTap: () async {
                        await _navigateTo(context, RouteNames.syllabusPage);
                      },
                      selected: _selectedRoute == RouteNames.syllabusPage,
                    ),
                    ListTile(
                      title: Text('Assigned Teachers'),
                      leading: Icon(Icons.person),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('My Transcript'),
                      leading: Icon(Icons.book),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Fee Details'),
                      leading: Icon(Icons.account_balance),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Login History'),
                      leading: Icon(Icons.history),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Setting'),
                      leading: Icon(Icons.settings),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('Grievance'),
                      leading: Icon(Icons.chat),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
            if (widget.permanentlyDisplay)
              VerticalDivider(
                width: 1,
                thickness: 1,
                color: Colors.grey[300],
              )
          ],
        ),
      ),
    );
  }

  /// Closes the drawer if applicable (which is only when it's not been displayed permanently) and navigates to the specified route
  /// In a mobile layout, the a modal drawer is used so we need to explicitly close it when the user selects a page to display
  Future<void> _navigateTo(BuildContext context, String routeName) async {
    if (widget.permanentlyDisplay) {
      Navigator.pop(context);
    }
    await Navigator.pushNamed(context, routeName);
  }

  void _updateSelectedRoute() {
    setState(() {
      _selectedRoute = ModalRoute.of(context).settings.name;
    });
  }
}
