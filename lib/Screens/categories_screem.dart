import 'package:flutter/material.dart';


class CategoriesScreem extends StatefulWidget {
  final String type;
  CategoriesScreem({Key key,this.type}) : super(key: key);

  @override
  _CategoriesScreemState createState() => _CategoriesScreemState();
}

class _CategoriesScreemState extends State<CategoriesScreem> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('Hello world '+widget.type),
    );
  }
}