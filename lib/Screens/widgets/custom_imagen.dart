import 'package:flutter/material.dart';

class CustomPageImage extends StatelessWidget {
  String path;
  CustomPageImage({this.path});


  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
    Column(children: [
      Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
            //padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
            child: Image.asset("assets/images/ariana_grande.png",
            width: 200,

            height: 125
          ),
        ),
            //width: 200,
              //height: 200,
        color: Colors.orange,
        ),
    ],
  )
],


);
  }
}
