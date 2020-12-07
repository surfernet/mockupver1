import 'package:flutter/material.dart';
import 'package:mockupver1/Screens/widgets/custom_header1.dart';
import 'package:mockupver1/Screens/widgets/custom_icon.dart';
import 'package:mockupver1/Screens/widgets/custom_widgets.dart';
import 'package:mockupver1/Screens/widgets/custom_imagen.dart';
import 'package:mockupver1/values/pathsImages.dart';
import 'dart:math' as math;

class InicioScreen extends StatefulWidget {
  final CurrentScreen currentScreen;
  InicioScreen({this.currentScreen});
  @override
  InicioScreenState createState() => InicioScreenState();
}

class InicioScreenState extends State<InicioScreen> {
  int currentTab;
  AnimationController _controller;
  Widget currentScreen;

  @override
  initState() {
    super.initState();
    print("init runs");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.black45,
      appBar: CustomAppBar(),

      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header1(title: "Categories"),
          Row(
            children: [
              CustomIcon(
                icon: Icons.battery_full,
                type: "deports",
              ),
              CustomIcon(
                icon: Icons.music_note,
                type: "deports",
              ),
              CustomIcon(
                icon: Icons.track_changes,
                type: "deports",
              ),
              CustomIcon(
                icon: Icons.speaker_notes,
                type: "deports",
              ),
              CustomIcon(
                icon: Icons.accessible,
                type: "deports",
              ),
              CustomIcon(
                icon: Icons.accessible,
                type: "deports",
              ),
            ],
          ),
          Header1(title: "Trending"),
          Container(
            height: 150,
            // width: MediaQuery.of(context).size.width-80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listPathsImages.length,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.only(left: 4.0),
                      child:
                          CustomPageImage(imagePath: listPathsImages[index]));
                }),
          ),
          Header1(title: "Recommended"),
          Row(
            children: [
              Expanded(child:   Container(
            height: 220,
            // width: MediaQuery.of(context).size.width-80,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: listPathsImages.length,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.only(left: 4.0),
                      child:
                          CustomPageImage(imagePath: listPathsImages[index]));
                }),
          
              ),),
             
              Column(
                children: [
                  Container(
                    width: 160,
                    height: 150,
                    color: Colors.blue,
                  )
                ],
              ),
            ],
          ),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        
        onPressed: () => null,
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
      // Bottom APP BAR WHITH ICONS
      bottomNavigationBar: BottomAppBar(
        elevation: 8.0,
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.0),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //Left Tab bar icons

              // Right Tab bar icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  bottomNavigationIcon2(
                    destination: null,
                    currentTab: null,
                    icon: Icons.home,
                  ),
                  SizedBox(width: 15),
                  bottomNavigationIcon2(
                    destination: null,
                    currentTab: null,
                    icon: Icons.restaurant,
                  ),
                  SizedBox(width: 15),
                  bottomNavigationIcon2(
                    destination: null,
                    currentTab: null,
                    icon: Icons.local_offer,
                  ),
                  SizedBox(width: 15),
                  bottomNavigationIcon2(
                    destination: null,
                    currentTab: null,
                    icon: Icons.map,
                  ),
                  SizedBox(width: 15),
                  bottomNavigationIcon2(
                    destination: null,
                    currentTab: null,
                    icon: Icons.person,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomNavigationIcon2({
    @required Widget destination,
    @required int currentTab,
    @required IconData icon,
  }) {
    return IconButton(
        color: (this.currentTab == currentTab) ? Colors.pink : Colors.white,
        icon: Icon(icon),
        onPressed: () => {});
  }
}

class CurrentScreen {
  final Widget currentScreen;
  final int tab_no;

  CurrentScreen({
    @required this.tab_no,
    @required this.currentScreen,
  });
}
