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
    //color: Colors.white,
    // set the font family as defined in pubspec.yaml
      fontFamily: 'varela',
      // set the font weight
      fontWeight: FontWeight.w400,
      // set the font size
      fontSize: 18.0);
}


getCategories(BuildContext context,  listOfContent){

  return  Container(
      //padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 4.0),
      height: MediaQuery.of(context).size.height * 0.16,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listOfContent.length, itemBuilder: (context, index) {
        return Container(

          width: MediaQuery.of(context).size.width * 0.26,
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



getDefaultBtn(String buttonText){

  return Container(
    padding: EdgeInsets.only(left: 18, right: 18),
    child: SizedBox(
      width: double.infinity,
      // height: double.infinity,
      child: RaisedButton(
        onPressed: (){},
        child: const Text('Login', style: TextStyle(fontSize: 20)),
      ),
    ),
  );

}


getGradientBtn(String title){

  return Container(
    padding: EdgeInsets.all(16),
    child: RaisedButton(
      onPressed: () {},
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF0D47A1),
              Color(0xFF1976D2),
              Color(0xFF42A5F5),
            ],
          ),
        ),
        padding: const EdgeInsets.all(10.0),
        child:
        const Text('Gradient Button', style: TextStyle(fontSize: 20)),
      ),
    ),
  );

}