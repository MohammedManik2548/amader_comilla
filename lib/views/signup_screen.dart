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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: size.height * 0.2,
                    child: Image.asset("images/L2.jpg"),
                  ),
                  Text(
                    "সাইন আপ করুন",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: Colors.green,
                      ),
                      labelText: "সম্পূর্ণ নাম",
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.green,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: Colors.green,
                      ),
                      labelText: "ইমেইল",
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.green,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: Colors.green,
                      ),
                      labelText: "পাসওয়ার্ড",
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.green,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.1),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      minimumSize: Size(300.0, 40.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Text(
                      "সাইন আপ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
