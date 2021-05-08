import 'package:flutter/material.dart';

import '../constants.dart';
class TrendingList extends StatelessWidget {
  const TrendingList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SuggestedPanel(image: "assets/images/malaikofta.png",
            title: "Malai Kofta",
            stateName: "World Class Foods",
            press: (){},
          ),
          SuggestedPanel(image: "assets/images/alooParatha.png",
            title: "Aloo Paratha",
            stateName: "Shametha Cooks",
            press: (){},
          ),
          SuggestedPanel(image: "assets/images/redVelevet.png",
            title: "Red Velvet Cake",
            stateName: "Lets Cook Now",
            press: (){},
          ),
          SuggestedPanel(image: "assets/images/icecream.png",
            title: "Eggless Icecream",
            stateName: "Mukunda Here",
            press: (){},
          ),
          SuggestedPanel(image: "assets/images/PrawnBiryani.png",
            title: "Prawn Biriyani",
            stateName: "Kavitha's Kitchen",
            press: (){},
          ),

        ],
      ),
    );
  }
}

class SuggestedPanel extends StatelessWidget {
  const SuggestedPanel({
    Key key, this.image, this.title, this.stateName, this.press,
  }) : super(key: key);

  final String image,title,stateName;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width*0.4,
        margin: EdgeInsets.only(left: kDefaultPadding,
          top: 0.5,
          bottom: 0.9,
        ),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(image),
            ),
            GestureDetector(
              onTap: press,
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding/2),
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.15),
                  ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(text:"$title\n",
                              style: Theme.of(context).textTheme.button,
                            ),
                            TextSpan(text: "$stateName",
                              style: TextStyle(color: Colors.red.withOpacity(0.7),
                              ),
                            ),
                          ]
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
