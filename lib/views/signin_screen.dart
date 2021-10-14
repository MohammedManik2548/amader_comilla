import 'package:flutter/material.dart';

import 'home_page.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                SizedBox(height: 30),
                Text(
                  "সাইন ইন করুন",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.green),
                ),
                SizedBox(height: 100),
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
                          labelText: "ইমেল",
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                          ),
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
                            ))),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()));
                          },
                          child: Text(
                            "সাইন ইন",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
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
