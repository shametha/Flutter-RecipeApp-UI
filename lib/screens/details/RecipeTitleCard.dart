import 'package:flutter/material.dart';

import '../../constants.dart';
class TitleInDetails extends StatelessWidget {
  const TitleInDetails({
    Key key, this.Recipe, this.Channel,
  }) : super(key: key);
  final String Recipe,Channel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding,top: kDefaultPadding-20),
      child: Row(
        children: <Widget>[
          RichText(text: TextSpan(children: [
            TextSpan(text: "$Recipe\n",style: Theme.of(context).textTheme.headline4.copyWith(
                color: kTextColor,fontWeight: FontWeight.bold
            ),),
            TextSpan(text: "$Channel",style: TextStyle(fontSize: 20,color: kPrimaryColor,
                fontWeight: FontWeight.w500))
          ],),),
        ],
      ),
    );
  }
}
