// ignore: file_names
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: unused_local_variable
// ignore_for_file: deprecated_member_use

class SignUp extends StatelessWidget {
  final form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30),
        child: SingleChildScrollView(
          child: Form(
            key: form,
            child: Column(
              children: [
                Image.asset('assets/images/ccc.png'),
                Text(
                  "Sign up",
                  style: TextStyle(fontSize: 22),
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Fill the field";
                    } else
                      null;
                  },
                  decoration:
                      InputDecoration(hintText: "Name", labelText: "Name"),
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Fill the field";
                    } else
                      null;
                  },
                  decoration: InputDecoration(
                      hintText: "Last Name", labelText: "Last Name"),
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Fill the field";
                    } else
                      null;
                  },
                  decoration:
                      InputDecoration(hintText: "Email", labelText: "Email"),
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty)
                      return "Fill the field";
                    else
                      null;
                  },
                  decoration:
                      InputDecoration(hintText: "Phone#", labelText: "Phone"),
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Fill the field';
                    } else
                      null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (form.currentState!.validate()) {
                      Navigator.pushNamed(context, '/login');
                    } else
                      null;
                  },
                  child: Text('Sign up'),
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 34, 66, 113),
                      minimumSize: Size(100, 40)),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
