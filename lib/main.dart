import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //int days = 30;
    //String name = "Codepur";

    // ignore: prefer_const_constructors
    return MaterialApp(
      // ignore: prefer_const_constructors
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: '/home',
      routes: {
        // ignore: prefer_const_constructors
        "/" :(context) => HomePage(),
        "/home" :(context) => LoginPage(),
      },
    );
  }
}
