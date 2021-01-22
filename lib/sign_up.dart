import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:app/Animation/FadeAnimation.dart';
import 'package:app/configuration.dart';
import 'package:app/sing_in.dart';
import 'package:app/sign_up1.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            backgroundColor: Color(0xFF232d4d),
            leading: IconButton(
              icon: new Icon(Icons.arrow_back, color: Color(0xFFFFFFFF)),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: FadeAnimation(
            1.6,
            Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(color: Color(0xFF252e4b)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 30),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "ลงทะเบียน\n\n",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(30),
                              // color: Color(0xFFF27E63),
                              color: Color(0xFF87F379),
                              // color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "สร้างบัญชีของคุณ",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(22),
                              color: Colors.grey,
                              // color: Color(0xff3C8590),
                              // color: Color(0xFF3b3a42),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ])),
                        SizedBox(height: 40),
                        FadeAnimation(
                            1.4,
                            Container(
                              width: 330,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 45,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xFFD4156E)),
                                            top: BorderSide(
                                                color: Color(0xFFD4156E)),
                                            right: BorderSide(
                                                color: Color(0xFFD4156E)),
                                            left: BorderSide(
                                                color: Color(0xFFD4156E)))),
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          hintText: "ชื่อผู้ใช้",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[600]),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 45,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xFFD4156E)),
                                            top: BorderSide(
                                                color: Color(0xFFD4156E)),
                                            right: BorderSide(
                                                color: Color(0xFFD4156E)),
                                            left: BorderSide(
                                                color: Color(0xFFD4156E)))),
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          hintText: "อีเมลล์",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[600]),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 45,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xFFD4156E)),
                                            top: BorderSide(
                                                color: Color(0xFFD4156E)),
                                            right: BorderSide(
                                                color: Color(0xFFD4156E)),
                                            left: BorderSide(
                                                color: Color(0xFFD4156E)))),
                                    child: TextField(
                                      obscureText: true,
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          hintText: "รหัสผ่าน",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[600]),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        SizedBox(height: 20),
                        SizedBox(height: 70),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "มีบัญชีอยู่แล้ว  ",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " เข้าสู่ระบบ",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(15),
                              color: Color(0xFF87F379),
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignIn()),
                                );
                                // single tapped
                              },
                          ),
                        ])),
                        SizedBox(height: 20),
                        FadeAnimation(
                          1.6,
                          Center(
                              child: Container(
                            height: 50,
                            width: 330,
                            // margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                // color: Color(0xFF4e71ba)
                                color: Colors.white),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp1()),
                                  );
                                },
                                child: Center(
                                  child: Text(
                                    "ลงทะเบียน",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ],
                )),
          )),
    );
  }
}
