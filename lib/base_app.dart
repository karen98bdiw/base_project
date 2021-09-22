import 'package:flutter/material.dart';

class BaseApp extends StatelessWidget {
  const BaseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => Scaffold(
        body: Center(
          child: Text("this is base app"),
        ),
      ),
    );
  }
}
