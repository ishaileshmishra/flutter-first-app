import 'package:flutter/material.dart';
import 'package:isage/features/data/datasources/catelog.dart';
import 'package:isage/utils.dart';


class HomePage extends StatefulWidget {

  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  final String screenName = 'iSAGE';
  final List<String> litOfItems = Catelog().getCatelog();


  void _findLocation() async{
    print('locate me..');
  }

  void _globalSearch(){
    print('global search..');
  }

  void _openDrawer(){
    print('open drawer..');
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: _openDrawer,
        ),

        title: Text(screenName),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search for anything...',
            hoverColor: Colors.pinkAccent,
            color: Colors.white,
            onPressed: _globalSearch,
          ),


        ],
      ),
      // body is the majority of the screen.
      body:Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[

            Container(
              padding: EdgeInsets.all(16),
              child: getCategories(context, litOfItems),
            ),

            getDefaultBtn('Login'),

            const SizedBox(height: 30),
          ],
        ),
      ),


      floatingActionButton: FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: Icon(Icons.my_location),
        onPressed: _findLocation,
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.


  }
}