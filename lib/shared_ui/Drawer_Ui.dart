import 'package:flutter/material.dart';
import 'package:flutter_app_news/Screens/Explore_Screen.dart';
import 'package:flutter_app_news/Screens/HeadLine_Screen.dart';
import 'package:flutter_app_news/Screens/TwitterFeeds.dart';
import 'package:flutter_app_news/Screens/home_screen.dart';
import 'NavMenuItem.dart';
import 'package:flutter_app_news/Screens/Instagram Feeds.dart';
import 'package:flutter_app_news/Screens/Facebook_Feeds.dart';
class DrawerUi extends StatefulWidget {
  @override
  _DrawerUiState createState() => _DrawerUiState();
}

class _DrawerUiState extends State<DrawerUi> {



  List<NavMenuItem> NavigationMenu = [

    NavMenuItem("Explore", () => home_screen()),
    NavMenuItem("HeadLine News", () => HeadLineScreen()),
    NavMenuItem("Twitter Feeds", () => TwitterFeeds()),
    NavMenuItem("Instagram Feeds", () => Instagram_Feeds()),
    NavMenuItem("Facebook Feeds", () => Facebook_Feeds()),


  ];

  List<IconData> Drawer_Icons = [

      Icons.explore,
      Icons.view_headline,
      Icons.mark_chat_read_outlined,
      Icons.photo_album,
      Icons.photo_album,




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
                Navigator.pop(context);
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

  
  }

