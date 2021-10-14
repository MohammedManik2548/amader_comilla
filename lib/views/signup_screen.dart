import 'package:flutter/material.dart';

import 'home_page.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: Image.asset("images/L2.jpg"),
                ),
                SizedBox(height: 20),
                Text(
                  "সাইন আপ করুন",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                            ),
                            labelText: "সম্পূর্ণ নাম",
                            labelStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.green,
                                )
                            )
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                            ),
                            labelText: "ইমেইল",
                            labelStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.green,
                                )
                            )
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                            ),
                            labelText: "পাসওয়ার্ড",
                            labelStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.green,
                                )
                            )
                        ),
                      ),
                      SizedBox(height: 50),
                      Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.green,
                        ),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>MyHomePage()));
                          },
                          child: Text(
                            "সাইন আপ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
