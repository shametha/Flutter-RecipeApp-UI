import 'package:flutter/material.dart';
import 'package:shametha_cookbook/components/bottom_nav_bar.dart';
import 'package:shametha_cookbook/screens/details/body.dart';
class DetailScreen extends StatelessWidget{
  @override
  const DetailScreen({
    Key key,
    @required
    this.recipeName, this.image, this.channel}) : super(key: key);

  final String recipeName,image,channel;
  Widget build(BuildContext context){
    return Scaffold(
      body: Body(RecipeName: recipeName,Image: image,Channel: channel,),
      bottomNavigationBar: bottom_nav_bar(),


    );
  }
}


