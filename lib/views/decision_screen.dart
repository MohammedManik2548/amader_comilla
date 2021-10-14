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
                Container(
                  height: 150,
                  width: 150,
                  child: Image.asset("images/L2.jpg"),
                ),
                SizedBox(height: 20),
                Text(
                  "আপনাকে স্বাগতম",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    color: Color(0xFF00A651),
                  ),
                ),
                SizedBox(height: 180),
                Column(
                  children: [
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
                                  builder: (context) => SignInScreen()));
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
                    SizedBox(height: 20),
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
                                  builder: (context) => SignUpScreen()));
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
                        style: TextStyle(
                            color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
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
