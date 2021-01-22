import 'package:flutter/material.dart';
import 'package:app/Animation/FadeAnimation.dart';
import 'configuration.dart';

class Content extends StatelessWidget {
  const Content({
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
        FadeAnimation(
          1.6,
          Image.asset(
            image,
            height: getProportionateScreenHeight(265),
            width: getProportionateScreenWidth(290),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        FadeAnimation(
          1.6,
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: 'Choose Food\n  Category',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(35),
                // color: Color(0xFFF27E63),
                color: Color(0xffF3C179),
                // color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ])),
        ),
        SizedBox(
          height: 20,
        ),
        FadeAnimation(
          1.6,
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xff3b3a42),
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ),
        Spacer(flex: 2),
      ],
    );
  }
}
