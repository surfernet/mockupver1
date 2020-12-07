import 'package:flutter/material.dart';



class Header1 extends StatelessWidget {
  final String title;
  final Color color = Colors.white;
  final double size = 24;
  const Header1({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(color:this.color, fontSize: this.size),);
  }
}
