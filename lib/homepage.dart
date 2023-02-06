import 'package:flutter/material.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  int days = 16;
  String name = "UjjwalKumar";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("appbar"),
          ),
        ),
        body: Container(
          child: Center(
            child: Text("Welcome to my App  by $name")
            ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.black12,
        ),
      ),
    );
  }
}
