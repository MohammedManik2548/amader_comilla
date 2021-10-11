import 'package:flutter/material.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Image.asset("images/logo.png"),
                Text(
                    "সাইন ইন করুন ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
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
                              color: Colors.black,
                            ),
                            labelText: "ইমেল",
                            labelStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                )
                            )
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            labelText: "পাসওয়ার্ড",
                            labelStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
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
                            color: Colors.black,
                        ),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            "সাইন ইন",
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
