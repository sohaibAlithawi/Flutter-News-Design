import 'package:flutter/material.dart';
import 'package:flutter_app_news/shared_ui/Drawer_Ui.dart';

import 'Favorite_Screen.dart';
import 'Popular_Screen.dart';
import 'Whats_News_Screen.dart';

class HeadLineScreen extends StatefulWidget {
  @override
  _HeadLineScreenState createState() => _HeadLineScreenState();
}

class _HeadLineScreenState extends State<HeadLineScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
            drawer: DrawerUi(),
            appBar: AppBar(
              title: Text("HeadLine News"),
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
              Favorite(),
              Popular(),
              Favorite(),
            ])),
      ),
    );
  }
}
