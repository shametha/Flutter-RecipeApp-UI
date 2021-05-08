import 'package:flutter/material.dart';

import '../../constants.dart';
import 'icondetails.dart';
class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
    @required this.size, this.imageName,
  }) : super(key: key);

  final Size size;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding*3),
      child: SizedBox(
        height: size.height*0.7,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding*2),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding*2-8,),
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        iconSize: 33,
                        onPressed: (){

                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    RecipeIcon(IconName: "assets/icons/Chef.svg",name: "Chef",),
                    RecipeIcon(IconName: "assets/icons/Cooktime.svg",name: "Cooking time",),
                    RecipeIcon(IconName: "assets/icons/health-insurance.svg",name:"Health benefits" ,),
                  ],
                ),),),
            Container(
              height: size.height*0.8,
              width: size.width*0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(63),bottomLeft: Radius.circular(63),),
                  boxShadow: [
                    BoxShadow(offset: Offset(0,10),
                      blurRadius: 60,
                      color: Colors.orangeAccent.withOpacity(0.29),),
                  ],
                  image: DecorationImage(
                      alignment:Alignment.center,
                      fit:BoxFit.cover,
                      image: AssetImage(imageName))),
            ),
          ],
        ),
      ),
    );
  }
}