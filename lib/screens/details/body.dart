import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shametha_cookbook/constants.dart';
import 'IconAndImage.dart';
import 'RecipeTitleCard.dart';
import 'icondetails.dart';
class Body extends StatelessWidget{
  @override
  const Body({
    Key key,
    @required
    this.Image, this.RecipeName, this.Channel,
  }) : super(key: key);

  final String Image,RecipeName,Channel;
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children:<Widget> [
          Container(
            height: size.height*0.04,
            color: Colors.white,
          ),
          ImageAndIcons(size: size,imageName: Image,),
          TitleInDetails(Recipe: RecipeName,Channel: Channel,)
              ],
      ),
    );
  }
}




