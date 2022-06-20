import 'package:eighth_app/another.dart';
import 'package:eighth_app/login.dart';
import 'package:eighth_app/signUp.dart';
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: unused_local_variable
// ignore_for_file: deprecated_member_use
void main() {
  runApp(EighthApp());
}

class EighthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        "/signup": (context) => SignUp(),
        "/login": (context) => Login(),
        "/selfWidget": (context) => selfWidget(),
      },
      home: Scaffold(),
    );
  }
}
