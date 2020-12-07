import 'package:awesome_loader/awesome_loader.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomPageImage extends StatelessWidget {
  final String imagePath;
  double width=200;
  double height=150;
  CustomPageImage({this.imagePath, this.width, this.height});


  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
    Column(children: [

      
      Container(
        height: this.height,
                  width: this.width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
            //padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
            child:  CachedNetworkImage(
                  height: 120,
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context, url, progress) =>
                      AwesomeLoader(
                    loaderType: AwesomeLoader.AwesomeLoader3,
                    color: Colors.green,
                  ),
                  imageUrl: imagePath,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
          
          ),
        ),
           
        
    ],
  )
],


);
  }
}
