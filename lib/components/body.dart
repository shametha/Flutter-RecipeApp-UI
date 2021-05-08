import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:shametha_cookbook/components/Trending.dart';
import 'package:shametha_cookbook/components/title_with_more_btn.dart';
import 'Suggestions.dart';
import 'header_with_searchbox.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shametha_cookbook/constants.dart';
class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMorebtn(title: "Suggestions",press: () {},),
          SuggestionList(),
          TitleWithMorebtn(title: "Latest",press: () {},),
          TrendingList(),
        ],
      ),
    );
  }
}


