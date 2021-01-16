
import 'package:flutter/material.dart';
import 'package:flutter_app_news/shared_ui/App_Theme.dart';
import 'Screens/WelcomeScreen.dart';
import 'Screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefernc = await SharedPreferences.getInstance();
  bool seen = prefernc.getBool('seen');
  Widget Screens;

  if (seen  == null || seen  == false ){
    Screens = WelcomeScreen();
  }else{
    Screens = home_screen();
  }


  runApp(NewsApp(Screens));



}

class NewsApp extends StatelessWidget {
   Widget _screens;
  NewsApp(this._screens);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: App_Theme.app_theme,
        debugShowCheckedModeBanner: false,
        home: this._screens,
    );
  }

}

