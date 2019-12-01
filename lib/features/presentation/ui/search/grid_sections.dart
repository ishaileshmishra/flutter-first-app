import 'package:flutter/material.dart';
import 'package:isage/utils.dart';

class GridSectionClass extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final String title = 'All Items';

    return MaterialApp(

        title: title,

        home: Scaffold(appBar: AppBar(
          title: Text(title),
        ),
            body: GridView.count(
                crossAxisCount: 2,
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(choice: choices[index]),
                  );
                }
                )
            )
        )
    );
  }
}

class Choice {

  const Choice({this.title, this.icon});
  final String title;
  final IconData icon;

}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.drafts),
  const Choice(title: 'Boat', icon: Icons.dvr),
  const Choice(title: 'Bus', icon: Icons.copyright),
  const Choice(title: 'Train', icon: Icons.cloud_off),
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.drafts),
  const Choice(title: 'Boat', icon: Icons.dvr),
  const Choice(title: 'Bus', icon: Icons.copyright),
  const Choice(title: 'Train', icon: Icons.cloud_off),
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.drafts),
  const Choice(title: 'Boat', icon: Icons.dvr),
  const Choice(title: 'Bus', icon: Icons.copyright),
  const Choice(title: 'Train', icon: Icons.cloud_off),
];

class ChoiceCard extends StatelessWidget {

  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {

    return Card(
        //color: Colors.grey,
        elevation: 5,
        child: Center(child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Icon(choice.icon, size:90.0,)),
              Container(

                padding: EdgeInsets.all(8),
                child: Text(choice.title, style: getVarelaStyle()),
              ),

            ]
        ),
        )
    );
  }
}