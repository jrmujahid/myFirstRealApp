import 'dart:convert';

import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: unused_local_variable
// ignore_for_file: deprecated_member_use
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 30),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              child: Image.asset(
                'assets/images/ccc.png',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: "font10"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextFormField(
                decoration:
                    InputDecoration(hintText: 'Name', labelText: 'Name'),
              ),
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 34, 66, 113),
                          minimumSize: Size(100, 40)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text('Sign Up')),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 17, 220, 65),
                          minimumSize: Size(100, 40)),
                      onPressed: () {},
                      child: Text('Sign In')),
                ],
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
