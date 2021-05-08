import 'package:flutter/material.dart';

import '../constants.dart';
class bottom_nav_bar extends StatelessWidget {
  const bottom_nav_bar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding+29,
        right: kDefaultPadding+29,
        bottom: kDefaultPadding,
      ),
      height: 49,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(
            offset: Offset(0,-10),
            blurRadius: 19,
            color: Colors.orange.withOpacity(0.19),)]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: Icon(Icons.home_outlined), onPressed: (){},color: Colors.deepOrangeAccent,iconSize: 33,),
          IconButton(icon: Icon(Icons.favorite_outline_rounded), onPressed: (){},color: Colors.deepOrangeAccent,iconSize: 33,),
          IconButton(icon: Icon(Icons.account_circle_outlined), onPressed: (){},color: Colors.deepOrangeAccent,iconSize: 33,),
        ],
      ),
    );
  }
}