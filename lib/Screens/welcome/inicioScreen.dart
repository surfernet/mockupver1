import 'package:flutter/material.dart';
import 'package:mockupver1/Screens/widgets/custom_widgets.dart';
import 'package:mockupver1/Screens/widgets/custom_imagen.dart';


class inicioScreen extends StatefulWidget {
  @override
  _inicioScreenState createState() => _inicioScreenState();
}

class _inicioScreenState extends State<inicioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body:

        Container(


        child: Row(children: [
          Column(
                //mainAxisAlignment: MainAxisAlignment.,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [CustomPageImage("assets/images/ariana_grande.png"),


                  Row(
                  children: [
                    Column(children: [
                      Container(


                          child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                            child: Image.asset("assets/images/ariana_grande.png",
                                  width: 200,
                                  height: 125,)
                            ),


                        //padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                        //color: Colors.purple,


                      ),
                    ],
                    )
                  ],


                  ),
                  Row(
                    children: [
                      Column(children: [
                        Container(
                          width: 200,
                          height: 125,
                          color: Colors.yellow,
                        )
                      ],
                      )
                    ],
                  ),

                  Row(
                      children: [
                        Column(children: [
                          Container(
                            width: 200,
                            height: 100,
                            color: Colors.pink,
                          )
                        ],
                        )
                      ],
                    ),

                ],),

              Column(

              children: [
                Container(
                  width: 210,
                  height: 650,
                  color: Colors.blue,
                )
              ],),
             ],
        )
        ),


    );
  }
}
