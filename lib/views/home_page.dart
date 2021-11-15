import 'package:flutter/material.dart';

import 'thana_page.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("হোম পেজ"),
        centerTitle: true,
        elevation: 5,
      ),
      drawer: Drawer(),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 8,
          itemBuilder: (context,index){
            return Container(
              padding: EdgeInsets.all(10.0),
              child: Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>ThanaPage()));
                  },
                  splashColor: Colors.green,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.home,
                          size: 70.0,
                          color: Colors.green,
                        ),
                        SizedBox(height: 10),
                        Text(
                            "থানা",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
