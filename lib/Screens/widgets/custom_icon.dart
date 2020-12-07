import 'package:flutter/material.dart';
import 'package:mockupver1/Screens/categories_screem.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final String type;

  const CustomIcon({Key key, this.icon, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoriesScreem(type: this.type),
          )),
      color: Colors.pink,
      iconSize: 34,
    );
  }
}
