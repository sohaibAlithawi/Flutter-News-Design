import 'package:flutter/material.dart';
import 'package:flutter_app_news/Screens/Favorite_Screen.dart';
import 'package:flutter_app_news/Screens/Popular_Screen.dart';
import 'package:flutter_app_news/Screens/Whats_News_Screen.dart';
import 'package:flutter_app_news/shared_ui/Drawer_Ui.dart';
class home_screen extends StatefulWidget {
  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
            drawer: DrawerUi(),
            appBar: AppBar(
              title: Text("Explore"),
              centerTitle: true,
              bottom: TabBar(indicatorColor: Colors.amber, tabs: [
                Tab(
                  text: "WHAT´S NEWS",
                ),
                Tab(
                  text: "POPULAR",
                ),
                Tab(
                  text: "FAVORITE",
                ),
              ]),
              actions: <Widget>[
                new IconButton(icon: Icon(Icons.search), onPressed: () {}),
                new IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
              ],
            ),
            body: TabBarView(children: <Widget>[
              Whats_News_Screen(),
              Popular(),
              Favorite(),
            ])),
      ),
    );
  }
}
