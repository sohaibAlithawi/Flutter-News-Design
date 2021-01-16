import 'package:flutter/material.dart';
import 'package:flutter_app_news/Screens/Explore_Screen.dart';
import 'package:flutter_app_news/Screens/HeadLine_Screen.dart';
import 'package:flutter_app_news/Screens/TwitterFeeds.dart';
import 'package:flutter_app_news/Screens/home_screen.dart';
import 'NavMenuItem.dart';
class DrawerUi extends StatefulWidget {
  @override
  _DrawerUiState createState() => _DrawerUiState();
}

class _DrawerUiState extends State<DrawerUi> {



  List<NavMenuItem> NavigationMenu = [

    NavMenuItem("Explore", () => home_screen()),
    NavMenuItem("HeadLine News", () => HeadLineScreen()),
    NavMenuItem("ReadLater", () => home_screen()),
    NavMenuItem("Videos", () => HeadLineScreen()),
    NavMenuItem("Photos", () => home_screen()),
    NavMenuItem("Settings", () => home_screen()),
    NavMenuItem("Logout", () => HeadLineScreen()),
    NavMenuItem("Twitter Feeds", () => TwitterFeeds()),


  ];

  List<IconData> Drawer_Icons = [

      Icons.explore,
      Icons.view_headline,
      Icons.mark_chat_read_outlined,
      Icons.ondemand_video_sharp,
      Icons.photo_sharp,
      Icons.settings,
      Icons.logout,
      Icons.logout,


  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Padding(
        padding: EdgeInsets.only(top: 100),
        child: ListView.builder(
          itemBuilder: (context, index){

            return ListTile(
              title: Text(NavigationMenu[index].title, style: TextStyle(fontSize: 20),),
              leading: Icon(Drawer_Icons[index],size: 20,),
              trailing: Icon(Icons.navigate_next,size: 20,),

              onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context){

                  return NavigationMenu[index].destination();


                })
                );

              },
            );

          },
          itemCount: NavigationMenu.length,
        ),
      ),





    );
  }

  Widget Drawer_Header(){

    return DrawerHeader(
      margin: EdgeInsets.all(10),
        child: Text("Options")

    );

  }
}
