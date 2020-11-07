import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mockupver1/Screens/root.dart';
import 'package:mockupver1/Screens/welcome/components/background.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final homeScaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeScaffoldKey,
      resizeToAvoidBottomPadding: false,
      body: Background(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45),
            ),
            Text(
              "You must complete this information to register",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextFormField(
              controller: emailController,
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
                              .createUserWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text)
                              .then((val) => {
                                    onCreatedAccount(),
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => RootScreen(),
                                        )),
                                  })
                              .catchError((e) =>{ 
                                print('SIGNUP ERROR,  '+e.toString()),
                                onErrorCreatedAccount()})
                        },
                    child:
                        Text("LOGIN", style: TextStyle(color: Colors.white))),
              ),
            ),
          ],
        ),
      )),
    );
  }

  void onCreatedAccount() {
    homeScaffoldKey.currentState.showSnackBar(
      SnackBar(content: Text("Cuenta creada con exito")),
    );
  }

  void onErrorCreatedAccount() {
    homeScaffoldKey.currentState.showSnackBar(
      SnackBar(content: Text("Ya existe un usuario con el mismo correo")),
    );
  }
}
