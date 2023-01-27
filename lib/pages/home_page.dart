import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text("Catalog App", 
        style: TextStyle(
           color: Colors.black),
           ),
      ),
        body: Center(
          child: Container(
            child: Text("Welcome to $days days of Flutter by $name"),
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}