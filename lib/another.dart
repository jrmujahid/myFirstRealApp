import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: unused_local_variable
// ignore_for_file: deprecated_member_use
class selfWidget extends StatefulWidget {
  @override
  State<selfWidget> createState() => _selfWidgetState();
}

class _selfWidgetState extends State<selfWidget> {
  @override
  bool ChangeEverything = false;
  final form = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Form(
          key: form,
          child: Column(
            children: [
              InkWell(
                onTap: () async {
                  setState(() {
                    ChangeEverything = true;
                  });
                  await Future.delayed(Duration(seconds: 5));
                  Navigator.pushNamed(context, '/login');
                },
                onDoubleTap: () {
                  setState(() {
                    ChangeEverything = false;
                  });
                },
                // child: AnimatedContainer(
                //   width: ChangeEverything ? 200 : 400,
                //   height: 200,
                //   duration: Duration(seconds: 1),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(40),
                //     color: ChangeEverything ? Colors.blue : Colors.amber,
                //   ),
                //   child: ChangeEverything
                //       ? Text(
                //           'hello google',
                //           textAlign: TextAlign.center,
                //           style: TextStyle(
                //               fontSize: ChangeEverything ? 33 : 12,
                //               backgroundColor:
                //                   ChangeEverything ? Colors.amber : Colors.blue),
                //         )
                //       : Icon(Icons.display_settings_sharp),
                // ),
                child: AnimatedContainer(
                  duration: Duration(seconds: 2),
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
