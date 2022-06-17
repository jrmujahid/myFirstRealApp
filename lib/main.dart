import 'package:flutter/material.dart';

void main() {
  runApp(EighthApp());
}

class EighthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(children: [
        Container(
          width: 300,
          height: 100,
          child: Row(
            children: [
              Image.asset(
                'assets/images/ccc.png',
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
        Container(
          width: 300,
          height: 100,
          child: Row(
            children: [
              Image.asset(
                'assets/images/ccc.png',
                fit: BoxFit.fitWidth,
              )
            ],
          ),
        ),
        Container(
          width: 300,
          height: 100,
          child: Row(
            children: [
              Image.asset('assets/images/ccc.png'),
            ],
          ),
        ),
        Container(
          width: 300,
          height: 100,
          child: Row(
            children: [Image.asset('assets/images/ccc.png')],
          ),
        )
      ]),
    ));
  }
}
