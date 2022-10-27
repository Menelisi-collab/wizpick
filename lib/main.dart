import 'package:flutter/material.dart';
import 'package:wizpick_app/app_screens/first_screen.dart';

void main() => runApp(new myFlutterApp());

class myFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "WizPick",
        home: Scaffold(
          body: FirstScreen(),
        ));
  }
}
