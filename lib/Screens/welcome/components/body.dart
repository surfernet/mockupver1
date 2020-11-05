import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mockupver1/Screens/welcome/components/background.dart';
import 'package:mockupver1/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => new _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  signWithPasswordandEmail(String email,String password){
    print('prueba'+email+password);
    /*FirebaseAuth.instance
        .signInWithEmailAndPassword(email: 'terri@gmail', password: '123456')
        .then((value) =>
        value.user != null? print('login successfully'): print('invalid login')); //rpta en consola
*/
    //setState para  indicar al suario que el login es falso
        
        

  }


  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;

  // this size provide us total height and width of our screen

  return Scaffold(
    resizeToAvoidBottomPadding:false,
    body: Background(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Welcome to Lito & HobbyPartner",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset("assets/icons/chat.svg",
            height: size.height* 0.3
          ),
          TextFormField(controller: emailController,),
          SizedBox(height: 13.0,),
          TextFormField(controller: passwordController,
            decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'password')),
          SizedBox(height: 13.0,),
          Container(
            //width: size.width * 0.8,
            child: ClipRRect(
              borderRadius:BorderRadius.circular(29),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical:20, horizontal: 40),
                color: Colors.blue,
                onPressed: signWithPasswordandEmail(emailController.text, passwordController.text) ,
                child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white))
                ),
            ),
          )
          ],
        ),
    )
    ),
  );
 }
}

