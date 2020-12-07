import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mockupver1/Screens/welcome/inicioScreen.dart';



class RootScreen extends StatefulWidget {
  RootScreen({Key key}) : super(key: key);
  

  @override
  _RootScreenState createState() => _RootScreenState();
}


class _RootScreenState extends State<RootScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  signOut() async {
    await _auth.signOut().then((onValue) => print("Sesión cerrada"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    
    Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
       child: 
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         SizedBox(height: 100,),
         Text('Usuario Logueado con exito :)'),
         SizedBox(height: 100,),
         RaisedButton(
           child:
                        Text("SIGNOUT", style: TextStyle(color: Colors.white)),
           padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            color: Colors.blue,
            
           onPressed: ()=>{
            signOut(),
            Navigator.of(context).pop()
         }),
           SizedBox(height: 60),
           InkWell(
             onTap: () => Navigator.push(context,
                                          MaterialPageRoute(
                                            builder:(context) => InicioScreen() ,
                                          )),
                 child:Container(
                  width: 150,
                  height: 30,
                  child: Text("ir a inicio",
                 textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),

             ),

           ),
           )
       ],)
     ),
    );
    
  }
}