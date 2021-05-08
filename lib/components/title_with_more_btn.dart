import 'package:flutter/material.dart';
import '../constants.dart';

class TitleWithMorebtn extends StatelessWidget {
  const TitleWithMorebtn({
    Key key,
    this.press, this.title,
  }) : super(key: key);
  final Function press;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding ),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text:title),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: kPrimaryColor,
            onPressed:press,
            child: Text("More",style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key, this.text,
  }) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding/6),
              child: Text("$text",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.only(right: kDefaultPadding/4),
                  height: 7,
                  color: kPrimaryColor.withOpacity(0.2),)
            )
          ],
        ));
  }
}