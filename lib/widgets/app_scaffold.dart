import 'package:flutter/material.dart';

import 'app_drawer.dart';

/// A responsive scaffold for our application.
/// Displays the navigation drawer alongside the [Scaffold] if the screen/window size is large enough
class AppScaffold extends StatelessWidget {
  const AppScaffold({@required this.body, @required this.pageTitle, Key key})
      : super(key: key);

  final Widget body;

  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;
    return Row(
      children: [
        if (!displayMobileLayout)
          const AppDrawer(
            permanentlyDisplay: true,
          ),
        Expanded(
          child: Scaffold(
            appBar: AppBar(title: Text("Hi,Sushant!"),flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Colors.blueAccent,
                        Colors.purpleAccent
                      ])
              ),
            ),

              actions: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 30.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications_rounded,
                        size: 26.0,
                      ),
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(right: 30.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                          Icons.power_settings_new
                      ),
                    )
                ),
              ],
            ),
            drawer: displayMobileLayout
                ? const AppDrawer(
              permanentlyDisplay: false,
            )
                : null,
            body: body,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              child: Icon(Icons.chat),
              backgroundColor: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}
