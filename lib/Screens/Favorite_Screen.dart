import 'dart:math';

import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {

  List<Color> ColorsList = [

    Colors.black,
    Colors.amber,
    Colors.yellow,
    Colors.brown,
    Colors.red,
    Colors.orange,
    Colors.green,

  ];

  
  Random random = Random();

  Color myRandomColors(){
    return ColorsList [random.nextInt(ColorsList.length)];
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return new Card(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: new Container(
              child: Column(
                children: <Widget>[

                  _authorRow(),
                  _newsItemRow(),

                ],
              ),
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }

  Widget _authorRow() {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[


        new Row(
          children: <Widget>[

            new Container(

              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: ExactAssetImage('images/black_image_3.jpg'),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 14),

              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Padding(
                  padding: EdgeInsets.only(bottom: 10),
                    child: new Text(
                      "Isam Abbas ",
                      style: TextStyle(
                          color: Colors.grey.shade600, fontWeight: FontWeight.w400),
                    ),
                  ),

                  new Row(
                    children: <Widget>[
                      new Text("30 min · ",style: TextStyle(color: Colors.grey.shade600,
                          fontWeight: FontWeight.w400),
                      ),

                      new Text("Life Style", style: TextStyle(color: myRandomColors()),)

                    ],
                  ),


                ],
              ),
            ),

          ],
        ),

        new IconButton(icon: Icon(Icons.bookmark_border), onPressed: (){}),
      ],
    );
  }

  Widget _newsItemRow() {
    return Padding(
      padding: EdgeInsets.only(top:10),
      
      child: new Row(children:<Widget>[
        new Container(
          width: 150,
          height: 150,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: ExactAssetImage( 'images/black_image_3.jpg' )

            ),
          ),
        ),

          Expanded(
            child: new Column(
              children: [

                Padding(
                  padding: EdgeInsets.all(10),
                  child: new Text("Tech Tent:Old phones and safe social",
                    textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10),
                  child: new Text("We also talk"
                      " about  the future of work as the robots advance,"
                      "and we ask whether a retro phone",
                    textAlign: TextAlign.left,

                    style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w300),
                  ),
                ),

              ],
            ),
          )
        

        
        
        ],
      ),
    );
  }
}
