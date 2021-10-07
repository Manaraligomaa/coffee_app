import 'package:flutter/material.dart';
import 'package:product_app/Screens/main_screen.dart';
import 'package:product_app/main.dart';

import 'constant.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimarycolor,
      appBar: AppBar(
        backgroundColor: kprimarycolor,
        elevation: 0,
        title: Text(
          "Coffee App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: HomePageBody(),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                color: Colors.red,
                child: Text(
                  "Logout",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Sign(),
                  ));
                }),
          ],
        ),
      ),
    );
  }
}
