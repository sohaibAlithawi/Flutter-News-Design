import 'package:flutter/material.dart';
import 'package:flutter_app_news/Screens/Favorite_Screen.dart';
import 'package:flutter_app_news/Screens/Popular_Screen.dart';
import 'package:flutter_app_news/Screens/Whats_News_Screen.dart';
import 'package:flutter_app_news/shared_ui/Drawer_Ui.dart';
class home_screen extends StatefulWidget {
  @override
  _home_screenState createState() => _home_screenState();
}
enum PopUpMenu{
  HELP,ABOUT,CONTACT,SETTINGS
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
                _PopUpMneu(context)
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

 Widget _PopUpMneu(BuildContext context) {

    return PopupMenuButton<PopUpMenu>(itemBuilder: (context){

      return[

        PopupMenuItem<PopUpMenu>(
          value: PopUpMenu.ABOUT,
          child:  Text("ABOUT"),
        ),

        PopupMenuItem<PopUpMenu>(
          value: PopUpMenu.CONTACT,
          child: Text("CONTACT"),
        ),

        PopupMenuItem<PopUpMenu>(
          value: PopUpMenu.SETTINGS,
          child:Text("SETTINGS"),
        ),


        PopupMenuItem<PopUpMenu>(
          value: PopUpMenu.HELP,
          child: Text("Help", textAlign: TextAlign.center,),
        ),

      ];

    });


 }
}
