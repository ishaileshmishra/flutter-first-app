import 'package:flutter/material.dart';
import 'package:isage/features/presentation/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        //primaryColor: Colors.lightBlue[800],
        accentColor: Colors.pinkAccent,

        // Define the default font family.
        fontFamily: 'varela',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'varela',),
        ),
      ),



      // go to homepage --> this is the first screen
      home: HomePage(title: 'iSAGE'),
    );
  }
}



