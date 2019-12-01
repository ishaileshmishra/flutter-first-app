import 'package:flutter/material.dart';


class GlobalSearch extends StatefulWidget {
  @override
  _GlobalSearchState createState() => _GlobalSearchState();
}

class _GlobalSearchState extends State<GlobalSearch> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),

      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Text(
            'Search for anything you want...',
            style: Theme.of(context).textTheme.headline,
          ),
        ),
      ),
    );


  }
}