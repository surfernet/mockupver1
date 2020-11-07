import 'package:flutter/material.dart';
import 'package:mockupver1/Screens/root.dart';
import 'package:mockupver1/Screens/signup.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:mockupver1/Screens/welcome/components/background.dart';
// import 'package:mockupver1/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => new _BodyState();
}
//  signWithPasswordandEmail(String email,String password){
//     print('prueba'+email+password);
//     ; //rpta en consola

//     //setState para  indicar al suario que el login es falso

//   }

class _BodyState extends State<Body> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // this size provide us total height and width of our screen

    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
            // SvgPicture.asset("assets/icons/chat.svg",
            //   height: size.height* 0.3
            // ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17), hintText: 'EMAIl')
            ),
            SizedBox(
              height: 13.0,
            ),
            TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17), hintText: 'password')),
            SizedBox(
              height: 13.0,
            ),
            Container(
              //width: size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    color: Colors.blue,
                    onPressed: () => {
                          FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: emailController.text.trim(), password: passwordController.text)
                              .then((value) => 
                               Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => RootScreen(),
                                        ))
                                  )
                              .catchError(
                                  (e) => print('ERROR!!!!!!' + e.toString()))
                        },
                    child:
                        Text("LOGIN", style: TextStyle(color: Colors.white))),
              ),
            ),

            SizedBox(height: 60),
            InkWell(
              onTap: () =>  Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignupScreen(),
                                        )),
              child: Container(
                width: 150,
                height: 30,
                child: Text(
                  'Crear una cuenta',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
