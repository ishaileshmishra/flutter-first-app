import 'package:flutter/material.dart';
import 'package:isage/features/data/datasources/catelog.dart';
import 'package:isage/utils.dart';
//import './utils.dart' as utils;

class HomePage extends StatefulWidget {

  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final List<String> litOfItems = Catelog().getCatelog();

  @override
  Widget build(BuildContext context) {

    void _findLocation() async{
      print('Finding location...');
    }


    return Scaffold(

      appBar: AppBar( title: Text( widget.title ) ),
      
      body:  Container(
        
        child: getCategories(context, litOfItems, 0.16, 0.26 ),
        
        
        

      ),
    

      floatingActionButton: FloatingActionButton(
        onPressed: _findLocation,
        tooltip: 'location',
        elevation: 4,
        hoverColor: Colors.pinkAccent,
        child: Icon(Icons.add_location),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  
    
  }
}