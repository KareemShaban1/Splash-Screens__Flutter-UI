import 'package:flutter/material.dart';
import 'package:splash_screen_flutter/configuration.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),

        RichText(text: TextSpan(
            children: [

              TextSpan(text:'Creative',style:TextStyle(
                fontSize: getProportionateScreenWidth(45),
                // color: Color(0xFFF27E63),
                color: Color(0xff3C8590),
                // color: Colors.black,
                fontWeight: FontWeight.bold,
              ), ),

              TextSpan(text:' Store',style:TextStyle(
                fontSize: getProportionateScreenWidth(46),
                // color: Color(0xFFF27E63),
                // color: Color(0xff3C8590),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ), ),


            ]
        )),


        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15

          ),
        ),

        Spacer(flex: 2),

        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(290),
        ),

      ],
    );
  }
}
