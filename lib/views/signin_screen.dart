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
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "সাইন ইন করুন",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 30.0,
                  right: 30.0,
                ),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(color: Colors.green),
                      decoration: InputDecoration(
                          fillColor: Colors.green[100],
                          filled: true,
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.green,
                            size: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          hintText: "ইমেইল",
                          hintStyle: TextStyle(
                            color: Colors.green,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.green),
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.green[100],
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.green,
                            size: 20,
                          ),
                          hintText: "পাসওয়ার্ড",
                          hintStyle: TextStyle(color: Colors.green),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
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
                        "সাইন ইন",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
