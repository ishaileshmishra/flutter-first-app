import 'package:flutter/material.dart';
import 'package:isage/utils.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextStyle style = TextStyle(fontFamily: 'Nunito', fontSize: 16.0);

  @override
  Widget build(BuildContext context) {



    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );


    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );


    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.pink,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        //padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          //do network call API integration
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );


    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.pink,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        //padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          //do network call API integration
        },
        child: Text("Registration",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.normal)),
      ),
    );



    return Scaffold(

      appBar: AppBar(title: Text('Login', style: getVarelaStyle(),),),

      body: SingleChildScrollView(

        child: Center(
          child: Container(
            //color: Colors.white,

            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 100.0,
                    child: Image.asset(
                      "assets/img/logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 35.0),
                  emailField,
                  SizedBox(height: 10.0),
                  passwordField,
                  SizedBox(
                    height: 35.0,
                  ),
                  loginButon,
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('If Not LoggedIn, Do Register'),
                  SizedBox(
                    height: 10.0,
                  ),
                  registerButton,
                ],
              ),
            ),
          ),
        ),

      )
    );





  }
}
