import 'package:flutter/cupertino.dart';
import 'package:flutter_app_news/Screens/home_screen.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  ValueNotifier<int> _PageNotifier = ValueNotifier(0);

  List<PageModel> pages;

  void PageModelValues() {
    pages = List<PageModel>();
    pages.add(PageModel(
        "Welcome!",
        "Welcome! to our app, This is my first real project in flutter ",
        'images/WelcomeS.jpg',
        Icons.account_circle_rounded));

    pages.add(PageModel(
        "Programming",
        "This App has created and programmed by Sohaib Alithawi ",
        'images/programming.webp',
        Icons.verified_outlined));

    pages.add(PageModel(
        "Security",
        "This app is very private and if you try to hack this app وحيات امي لكيبك",
        'images/Hacking.jpeg',
        Icons.security));
  }

  @override
  Widget build(BuildContext context) {
    PageModelValues();

    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  new Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: ExactAssetImage(pages[index].Image))),
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Transform.translate(
                        child: new Icon(
                          pages[index].Icon,
                          color: Colors.white,
                          size: 100,
                        ),
                        offset: Offset(0, -50),
                      ),
                      new Align(
                        alignment: Alignment.center,
                        child: new Transform.translate(
                          child: new Text(
                            pages[index].Title,
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          offset: Offset(0, -40),
                        ),
                      ),
                      new Align(
                        alignment: Alignment.center,
                        child: new Transform.translate(
                          child: new Text(
                            pages[index].SubTitle,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          offset: Offset(0, -30),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: pages.length,
            onPageChanged: (index) {
              _PageNotifier.value = index;
            },
          ),

          // TODO: Get Started Button

          Align(
            alignment: Alignment.bottomCenter,
            child: new Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: new RaisedButton(
                  color: Colors.red[900],
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          _updateScreen();
                          return home_screen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ),

          new Transform.translate(
            offset: Offset(0, 100),
            child: Align(
                alignment: Alignment.centerRight,
                child: PageIndicators(pages.length)),
          ),
        ],
      ),
    );
  }

  Widget PageIndicators(int pageLength) {
    return PageViewIndicator(
      pageIndexNotifier: _PageNotifier,
      length: pageLength,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
    );
  }

  void _updateScreen() async{

    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('seen', true);

  }
}

class PageModel {
  String _title;
  String _subTitle;
  String _image;
  IconData _Icon;

  PageModel(
    this._title,
    this._subTitle,
    this._image,
    this._Icon,
  );

  IconData get Icon => _Icon;

  String get Image => _image;

  String get SubTitle => _subTitle;

  String get Title => _title;
}
