

import 'package:flutter/material.dart';
import 'package:kowi/mainwidgetscreen/dobdialer.dart';
import 'package:kowi/mainwidgetscreen/weightslider.dart';
import 'textstyles.dart';
import 'slider.dart';


class Kowi extends StatefulWidget {


  @override
  _KowiState createState() => _KowiState();
}

class _KowiState extends State<Kowi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Column(

         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 12),
              child:Column(

                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios_sharp,color: Color(0xFFff5a5a),),
                      Text(" About Me",style:simpleTextStyle()),
                    ],
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  Row(
                    children: [
                      Text("DOB",style:simpleTextStyle()),
                    ],
                  ),
                   Datepicker(),

                  SizedBox(
                    height: 25,
                  ),

                  Row(
                      children :

                      <Widget>[
                        Text("Height",style: simpleTextStyle(),),

                        Container(
                          margin: EdgeInsets.only(left: 120),
                            child: RaisedButton(
                              color: Colors.white,
                              highlightColor: Color(0xFFff5a5a),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: BorderSide(color: Colors.grey)
                              ),
                              onPressed: (){

                              },
                              child: Text("Feet",style:simpleButtonTextStyle().copyWith(color: Colors.black),),
                            )
                        ),

                        Container(
                          padding: EdgeInsets.only(left: 5.0),
                            alignment: Alignment.centerRight,
                            child: RaisedButton(
                              color: Color(0xFFff5a5a),
                              highlightColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                              ),
                                onPressed: (){

                                },
                              child: Text("Meters",style: simpleButtonTextStyle(),),
                            )
                        ),
                      ]),

               SimpleSlider(),


                  SizedBox(
                    height: 25,
                  ),

                  Row(
                      children :

                      <Widget>[
                        Text("Weight",style: simpleTextStyle(),),

                        Container(
                            margin: EdgeInsets.only(left: 120),
                            child: RaisedButton(
                              highlightColor: Color(0xFFff5a5a), //Replace with actual colors

                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                  side: BorderSide(color: Colors.grey)
                              ),
                              onPressed: (){},
                              child: Text("Kg",style:simpleButtonTextStyle().copyWith(color: Colors.black),),
                            )
                        ),

                        Container(
                            padding: EdgeInsets.only(left: 5.0),
                            alignment: Alignment.centerRight,
                            child: RaisedButton(
                              color: Color(0xFFff5a5a),
                              highlightColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              onPressed: (){

                              },
                              child: Text("Pound",style: simpleButtonTextStyle(),),
                            )
                        ),
                      ]),

                  MyWeightSlider(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    
                    child: TextButton(
                      onPressed: (){},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),

                              ),
                          ),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 17, horizontal: 50)),

                        backgroundColor: MaterialStateProperty.all(Color(0xFFff5a5a)),
                        elevation: MaterialStateProperty.all(10),
                        shadowColor: MaterialStateProperty.all(Colors.deepOrange),


                      ),
                      child: Text("CONFIRM",style: simpleButtonTextStyle(),),

                    ),
                  )

                ],
              ),



          ),
        ],


      )



    );
  }
}
