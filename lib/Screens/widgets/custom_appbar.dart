import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget  implements PreferredSizeWidget {
  @override
  CustomAppBar({Key key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key); // se agrego esto para que no aparezca error

  @override
  final Size preferredSize; // default is 56.0     // se agrego esto para que no aparezca error

  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black54,
      title: Text('Latest News', style: TextStyle(fontSize:20,fontWeight: FontWeight.w700, color: Colors.white)),
    );
      
    
  }
}
