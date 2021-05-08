import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
class RecipeIcon extends StatelessWidget {
  const RecipeIcon({
    Key key, this.IconName, this.name,
  }) : super(key: key);
  final String IconName;
  final String name;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height*0.03),
      padding: EdgeInsets.all(kDefaultPadding/2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow:[ BoxShadow(
            offset: Offset(0,20),
            blurRadius: 22,
            color: Colors.orangeAccent.withOpacity(0.22),
          ),
            BoxShadow(
                offset: Offset(-15,-15),
                blurRadius: 20,
                color: Colors.white
            ),]
      ),
      child: IconButton(
        splashColor: Colors.orangeAccent,
        icon: SvgPicture.asset(IconName,),
        //icon: Icon(IconName,size: 33,),
        color: Colors.black,
        tooltip: "$name",
        onPressed: (){},
      ),
    );
  }
}