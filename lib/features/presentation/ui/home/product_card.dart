import 'package:flutter/material.dart';
import 'package:isage/features/presentation/ui/home/custom_icons.dart';

class ProductCard extends StatelessWidget {
  Color cardColor;
  String imgUrl;
  String title;
  String previousPrice;
  String price;

  ProductCard(this.cardColor, this.imgUrl, this.title, this.previousPrice, this.price);

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: 320.0,
      decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Colors.grey.withOpacity(.3), width: .2)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 8.0,
          ),
          Image.asset(imgUrl, width: 281.0, height: 191.0),
          Text(title, style: TextStyle(fontSize: 25.0, color: Colors.black)),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite, color: Colors.red,),
                  onPressed: () {},
                ),
                Column(
                  children: <Widget>[
                    Text(previousPrice,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,)),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(price,
                        style:
                        TextStyle(fontSize: 28.0, color: Colors.black)),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.laptop_mac, color: Colors.red,),
                  onPressed: () {
                    print('Item cliked');
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

