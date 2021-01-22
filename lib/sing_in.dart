import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:app/configuration.dart';
import 'package:app/sign_up.dart';
import 'package:app/profile.dart';
import 'package:app/Animation/FadeAnimation.dart';
//import 'package:app/firebase_auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF232d4d),
            leading: IconButton(
              icon: new Icon(Icons.arrow_back, color: Color(0xFFFFFFFF)),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          resizeToAvoidBottomPadding: false,
          body: FadeAnimation(
            1.6,
            Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    // color: Color(0xFF191720),
                    color: Color(0xFF252e4b)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 60),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "ลงชื่อเข้าใช้\n\n",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(30),
                              // color: Color(0xFFF27E63),
                              color: Color(0xFF87F379),
                              // color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "ยินดีต้อนรับ\n",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(25),
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
                                          hintText: "อีเมลล์sหรือชื่อผู้ใช้",
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
                        SizedBox(height: 80),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "ถ้าไม่มีบัญชี ? ",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "ลงทะเบียน",
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
                                      builder: (context) => SignUp()),
                                );
                                // single tapped
                              },
                          ),
                        ])),
                        SizedBox(height: 20),
                        FadeAnimation(
                            1.6,
                            Container(
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
                                          builder: (context) => Profile()),
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      "เข้าสู่ระบบ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ],
                )),
          )),
    );
  }
}
