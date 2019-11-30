import 'package:flutter/material.dart';
import 'package:isage/features/presentation/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData( primaryColor: Colors.pinkAccent, accentColor: Colors.pinkAccent, fontFamily: 'varela',
      ),

      // go to homepage --> this is the first screen
      home: HomePage(title: 'iSAGE'),
    );
  }
}



