import 'package:flutter/material.dart';
import 'package:shametha_cookbook/screens/details/details.dart';

import '../constants.dart';
class SuggestionList extends StatelessWidget {
  const SuggestionList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SuggestedPanel(image: "assets/images/ChettinaduChicken.png",
            title: "Chettinadu Chicken",
            channelName: "Shametha Cooks",
            press: (){
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context)=>DetailScreen(image: "assets/images/ChettinaduChicken.png",
                  recipeName:"Chettinadu Chicken" ,channel: "Shametha Cooks",),),
            );
            },
          ),
          SuggestedPanel(image: "assets/images/Pulihora.png",
            title: "Pulihora",
            channelName: "Gopi's Recipe Book",
            press: (){
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context)=>DetailScreen(image: "assets/images/Pulihora.png",
                    recipeName:"Pulihora" ,channel: "Gopi's Recipe Book",),),
              );
            },
          ),
          SuggestedPanel(image: "assets/images/Sarvapindi.png",
            title: "Sarva Pindi",
            channelName: "Shametha Cooks",
            press: (){
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context)=>DetailScreen(image: "assets/images/Sarvapindi.png",
                    recipeName:"Sarva Pindi" ,channel: "Shametha Cooks",),),
              );
            },
          ),
          SuggestedPanel(image: "assets/images/PuttuKadalaiCurry.png",
            title: "Puttu and \nKadalai Curry",
            channelName: "Handmade",
            press: (){
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context)=>DetailScreen(image: "assets/images/PuttuKadalaiCurry.png",
                    recipeName:"Puttu and Kadalai Curry" ,channel: "Handmade",),),
              );
            },
          ),
          SuggestedPanel(image: "assets/images/BBBath.png",
            title: "Bisi Belle Bath",
            channelName: "Govindamma's Kitchen",
            press: (){
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context)=>DetailScreen(image: "assets/images/BBBath.png",
                    recipeName:"Bisi Belle Bath" ,channel: "Govindamma's Kitchen",),),
              );
            },
          ),

        ],
      ),
    );
  }
}

class SuggestedPanel extends StatelessWidget {
  const SuggestedPanel({
    Key key, this.image, this.title, this.channelName, this.press,
  }) : super(key: key);

  final String image,title,channelName;
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
                            TextSpan(text: "$channelName",
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
