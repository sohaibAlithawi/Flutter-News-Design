import 'package:flutter/material.dart';
import 'package:flutter_app_news/shared_ui/Drawer_Ui.dart';

class TwitterFeeds extends StatefulWidget {
  @override
  _TwitterFeedsState createState() => _TwitterFeedsState();
}

class _TwitterFeedsState extends State<TwitterFeeds> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: DrawerUi(),

      appBar: AppBar(
        title: Text("Twitter Feeds"),
        centerTitle: true,

        actions: <Widget>[
          Padding(
            padding:EdgeInsets.only(right: 10),
            child: IconButton(icon: Icon(Icons.search), onPressed: (){},)
          ),
        ],
      ),

      body: ListView.builder(
          itemBuilder: (context, index){
            return Padding(
              padding: EdgeInsets.all(5),
              child: new Card(
                elevation: 10,

                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[


                    _cardHeader(),
                    _cardBody(),
                    _drawLine(),
                    _cardFooter(),


                  ],
                ),
              ),
            );

          },
          itemCount: 20,
      )

    );
  }





  Widget _cardHeader(){
      return Padding(

        padding:EdgeInsets.all(15),
        child: new Row(
          children: <Widget>[

            new CircleAvatar(backgroundImage: ExactAssetImage('images/black_image_1.jpg'),),

            new Column(
              children: [

                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: new Row(
                    children: [

                      new Text("Ahmed Ali ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),


                      new Text("@Ahmed Ali ",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),

                    ],
                  ),
                ),


                Padding(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: new Text("Fri 12 May 2017 . 14.20"),
                ),

              ],
            ),


          ],
        ),
      );
  }



  Widget _cardBody(){
      return Padding(
        padding: EdgeInsets.only(left: 20,right: 20,top: 5, bottom: 15),
        child: new Text("In This News App you can find all news around the world,"
            " and you should know what happen around the world",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400,color: Colors.grey.shade900),
        ),
      );
  }



  Widget _cardFooter(){
        return new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[




            new Row(
              children: <Widget>[

                new IconButton(icon: Icon(Icons.repeat, color: Colors.orange,),onPressed: (){},),
                new Text("25",),

              ],
            ),

          new Row(
            children: <Widget>[

              FlatButton(onPressed: (){}, child: Text("SHARE",
                style: TextStyle(color: Colors.orange),),
              ),

              FlatButton(onPressed: (){}, child: Text("OPEN",
                style: TextStyle(color: Colors.orange),),
              ),


            ],
          )


          ],
        );
  }


  Widget _drawLine(){

    return new Container(
      height: 1,
      color: Colors.grey.shade300,
      margin: EdgeInsets.only(top: 16),
    );
  }
}
