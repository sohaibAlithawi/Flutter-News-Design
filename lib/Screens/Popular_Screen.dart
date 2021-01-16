import 'package:flutter/material.dart';


class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, position){
          return new Card(
            child: _DrawSingleRow() ,

          );
        },

    itemCount: 20,
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
}
