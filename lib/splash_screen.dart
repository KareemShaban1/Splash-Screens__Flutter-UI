import 'package:flutter/material.dart';
import 'package:splash_screen_flutter/configuration.dart';
import 'package:splash_screen_flutter/constants.dart';
import 'package:splash_screen_flutter/splash_content.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
    );
  }
}



class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Creative Store, Let’s shop!",
      "image": "assets/images/shopping.png"
    },
    {
      "text":
      "We help people connect with store ..",
      "image": "assets/images/online_shopping.png"
    },
    {
      "text": "We show the easy way to shop.",
      "image": "assets/images/online_shopping_.png"
    },
    {
      "text": "Just stay at home with us",
      "image": "assets/images/at_home.png"
    }

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[

            Expanded(
              flex: 5,
              child: PageView.builder(

                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],

                ),

              ),

            ),

            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(flex: 3),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),

                    Spacer(),

                    SplahButton(
                      text: "Continue",
                      press: () {},
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Color(0xff3C8590) : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class SplahButton extends StatelessWidget {
  const SplahButton({
    Key key,
    this.text,
    this.press,

  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(60),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        // color: Color(0xFFF27E63),
        // color: Colors.black,
        color: Color(0xff3C8590),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
