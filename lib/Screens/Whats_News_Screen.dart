import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Whats_News_Screen extends StatefulWidget {
  @override
  _Whats_News_ScreenState createState() => _Whats_News_ScreenState();
}

class _Whats_News_ScreenState extends State<Whats_News_Screen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: new Column(
        children: <Widget>[
          drweHeader(),
          DrawTopStories(),
        ],
      ),
    );
  }

  Widget drweHeader() {
    TextStyle _textStyleTitle = TextStyle(
        color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold);

    TextStyle _textStyleSubTitle = TextStyle(color: Colors.white, fontSize: 18);

    return Container(
      width: double.infinity,
      height: 260,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: ExactAssetImage('images/black_image_2.jpg')),
      ),
      child: new Center(

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new Text("News App Include",
                textAlign: TextAlign.center, style: _textStyleTitle),
            new SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: new Text(
                  "In This News App you can find all news around the world, and you should know what happen around the world ",
                  textAlign: TextAlign.center,
                  style: _textStyleSubTitle),
            ),
          ],
        ),
      ),
    );
  }

  Widget DrawTopStories() {
    return Container(

      decoration: BoxDecoration(
      color: Colors.white60, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 16, top: 16),
              child: DrawSectionTitle("Top Stories")


          ),
          


          _DrawSingleRow(),
          _DrawSingleRow(),
          _DrawSingleRow(),
          new Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: <Widget>[
                DrawSectionTitle("Recent Update"),

                DrawRecentUpdateCard(Colors.deepOrangeAccent,"SPORT"),

                Padding(child: DrawRecentUpdateCard(Colors.green,"LIFESTYLE"), padding: EdgeInsets.only(top:5)),


              ],
            ),

          ),



        ],
      ),
    );
  }

  Widget _DrawSingleRow(){


    return Padding(
      padding: EdgeInsets.all(8),
      child: new Card(
        elevation: 10,
        color: Colors.grey.shade300,
        child: Column(children: <Widget>[


          new Row(
            children: <Widget>[

              Padding(
                padding: EdgeInsets.all(5),
                child: new Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: ExactAssetImage(
                              'images/black_image_2.jpg')
                      )
                  ),
                ),
              ),

              Expanded(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: new Text("The number of infected people with Corona virus is a year 2021",

                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text(
                          "Ahmed Ali",
                          style: TextStyle(color: Colors.black),
                        ),
                        Row(
                          children: <Widget>[
                            new Icon(
                              Icons.timelapse,
                              color: Colors.black,
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: new Text(
                                "15 min",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),



        ]
        ),
      ),
    );



  }

  Text DrawSectionTitle(String _title){

    return new Text(
      _title,
      style:  TextStyle(

        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 16,

      ),
    );

  }

  Widget DrawRecentUpdateCard(Color _color, String _postTitle){

      return new Card(
            margin: EdgeInsets.only(bottom: 10),
            color: Colors.white70,
            elevation: 10,
            child:Column(
            mainAxisAlignment: MainAxisAlignment.start,

          children: <Widget>[

          new Container(
          width: double.infinity,
          height: 200,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: ExactAssetImage('images/black_image_3.jpg')
                )
            ),
          ),

            Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: new Container(
                  width: 90,
                  height: 20,
                  decoration: BoxDecoration(
                    color: _color,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  
                  child: new Text(_postTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w500)

                  ),
                ),
              ),
            ),

            new Text("Vettel is Ferrari Number One - Hamilton",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),

            Padding(
              padding: EdgeInsets.all(10),
              child: new Row(
                children: <Widget>[
                     new Icon(Icons.timelapse,
                        size: 20,
                        color: Colors.black,
                      ),
                          
                          DrawSectionTitle("15 min")
                  
                ],
              ),
            )


          ],
       ),
      );

  }
}
