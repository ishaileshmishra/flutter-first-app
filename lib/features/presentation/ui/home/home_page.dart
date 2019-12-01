import 'package:flutter/material.dart';
import 'package:isage/features/data/models/catelog.dart';
import 'package:isage/features/presentation/ui/allProducts/all_products.dart';
import 'package:isage/features/presentation/ui/search/global_search.dart';
import 'package:isage/features/presentation/ui/login/login_screen.dart';
import 'package:isage/utils.dart';
import 'package:isage/features/presentation/ui/search/grid_sections.dart';


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
    Navigator.push( context, MaterialPageRoute(builder: (context) => AllAvailProducts()));
  }

  void _globalSearch(){
    print('global search..');
    Navigator.push( context, MaterialPageRoute(builder: (context) => GlobalSearch()));
  }

  void _openDrawer(){
    print('open drawer..');
    Navigator.push( context, MaterialPageRoute(builder: (context) => GridSectionClass()));
  }

  void _navigateLogin(){
    Navigator.push( context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }


  TextStyle style = TextStyle(fontFamily: 'Nunito', fontSize: 15.0);



  @override
  Widget build(BuildContext context) {

    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(40.0),
      color: Colors.pink,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        //padding: EdgeInsets.only(top: 2, bottom: 2),//fromLTRB(20.0, 8.0, 8.0, 20.0),
        onPressed: () {
          //do network call API integration
          _navigateLogin();
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.normal)),
      ),
    );


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
      body: SingleChildScrollView(

        child: Center(

          child: Column(

            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              // show all the categories available
              Container(
                padding: EdgeInsets.zero,
                child: getCategories(context, litOfItems),
              ),

              // Login button if user is not logged in.
              Container(
                  padding: EdgeInsets.only(left: 18, right: 18, top: 8),
                  child: registerButton
              ),

              //const SizedBox(height: 10),

              Container(
                padding: EdgeInsets.all(16),
                child: Text('All the available categories', style: getVarelaStyle(), ),
              ),

              //creates a gridview for other items



            ],
          ),
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



