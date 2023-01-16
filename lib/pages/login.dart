// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),

              SizedBox(
                height: 20.0,
                //child: Text("fabiha"),
              ),

              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              // Image(image: AssetImage('images/login_image.png'),),
              SizedBox(
                height: 20.0,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 16.0,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username:",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {
                          
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password:",
                        labelText: "Password",
                      ),
                      
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        //color: Colors.deepPurple,
                        alignment: Alignment.center,
                        // ignore: sort_child_properties_last
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    // )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}


/**child: Center(
        child: Text("Login Page",
        style: TextStyle(
          fontSize: 40, 
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          ),
         // textScaleFactor: 3.0,
        ),
      ),**/