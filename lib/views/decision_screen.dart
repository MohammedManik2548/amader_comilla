import 'package:amader_comilla/views/signin_screen.dart';
import 'package:amader_comilla/views/signup_screen.dart';
import 'package:flutter/material.dart';

class DecisionScreen extends StatefulWidget {
  const DecisionScreen({Key? key}) : super(key: key);

  @override
  _DecisionScreenState createState() => _DecisionScreenState();
}

class _DecisionScreenState extends State<DecisionScreen> {
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
                Image.asset("images/logo.png"),
                Text(
                  "আপনাকে স্বাগতম",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                SizedBox(height: 200),
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.black,
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>SignInScreen()));
                        },
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
                    SizedBox(height: 20),
                    Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.black,
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>SignUpScreen()));
                        },
                        child: Text(
                          "সাইন আপ ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "এড়িয়ে যান ",
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
