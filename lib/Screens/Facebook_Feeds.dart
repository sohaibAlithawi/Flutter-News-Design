import 'package:flutter/material.dart';
import 'package:flutter_app_news/shared_ui/Drawer_Ui.dart';

class Facebook_Feeds extends StatefulWidget {
  @override
  _Facebook_FeedsState createState() => _Facebook_FeedsState();
}

class _Facebook_FeedsState extends State<Facebook_Feeds> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: DrawerUi(),

        appBar: AppBar(
          title: Text("Facebook Feeds"),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    _drawHeader(),
                    _drawBody(),
                    _drawFooter(),


                  ],
                ),
              ),
            );

          },
          itemCount: 20,
        )

    );
  }

  Widget _drawHeader() {

    return Padding(

      padding:EdgeInsets.all(15),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          new Row(
            children: [

              new CircleAvatar(backgroundImage: ExactAssetImage('images/black_image_1.jpg'),),

              Padding(
                padding: EdgeInsets.only(left: 5),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [



                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: new Text("Ahmed Ali ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 5),
                      child: new Text("Fri 12 May 2017 . 14.20"),
                    ),

                  ],
                ),
              ),

            ],
          ),


          new Row(
            children: [

              new IconButton(icon:Icon(Icons.favorite,color: Colors.redAccent,),onPressed: (){},),

              Transform.translate(
                offset: Offset(-10,0),
                child: new Text("25"),

              ),
            ],
          )

        ],
      ),
    );
  }

  Widget _drawBody() {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: EdgeInsets.only(left: 20),
          child: new Text("We also talk about the future of work as the robots"),

        ),

        new Row(
          children: [

            new FlatButton(onPressed: (){}, child: Text("#advance", style: TextStyle(color: Colors.orange),),),
            new FlatButton(onPressed: (){}, child: Text("#retro", style: TextStyle(color: Colors.orange),),),
            new FlatButton(onPressed: (){}, child: Text("#instagram", style: TextStyle(color: Colors.orange),),),

          ],
        ),


        new Container(

          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: ExactAssetImage('images/programming.webp')
              )
          ),
        ),
      ],
    );

  }

  Widget _drawFooter() {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        new Row(
          children: [

            new Transform.translate(
              child: new Text("10", style: TextStyle(color: Colors.orange),),
              offset: Offset(10,0),
            ),

            new FlatButton(onPressed: (){}, child: Text("COMMENTS", style: TextStyle(color: Colors.orange)))

          ],
        ),


        new Row(
          children: [

            FlatButton(onPressed: (){},

              child: Text("SHARE",
                style: TextStyle(color: Colors.orange),
              ),
            ),

            FlatButton(onPressed: (){},

              child: Text("OPEN",
                style: TextStyle(color: Colors.orange),
              ),
            ),


          ],
        ),
      ],

    );


  }


}
