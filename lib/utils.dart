import 'package:flutter/material.dart';

TextStyle getTextStyle() {
  // text style which defines a custom font
  return const TextStyle(
      // set color of text
      color: Colors.black,
      // set the font family as defined in pubspec.yaml
      fontFamily: 'Nunito',
      // set the font weight
      fontWeight: FontWeight.w400,
      // set the font size
      fontSize: 16.0);
}


TextStyle getVarelaStyle() {
  // text style which defines a custom font
  return const TextStyle(
      // set color of text
      color: Colors.black,
      // set the font family as defined in pubspec.yaml
      fontFamily: 'varela',
      // set the font weight
      fontWeight: FontWeight.w400,
      // set the font size
      fontSize: 16.0);
}


getCategories(BuildContext context,  listOfContent, height, width){

return  Container(
  padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 4.0),
  height: MediaQuery.of(context).size.height * height,
  child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: listOfContent.length, itemBuilder: (context, index) {
              return Container(
              
                width: MediaQuery.of(context).size.width * width,
                child: Card (
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.network( listOfContent[index].toString(), fit: BoxFit.cover ),
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(8.0)),
                  elevation: 5,
                  margin: EdgeInsets.all(8)),
              );
        }));
}