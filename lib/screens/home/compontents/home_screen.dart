import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shametha_cookbook/components/body.dart';
import 'package:shametha_cookbook/components/bottom_nav_bar.dart';
import 'package:shametha_cookbook/constants.dart';
class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: bottom_nav_bar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu,size: 40,),
        onPressed: () {},
      ),
    );
  }
}

