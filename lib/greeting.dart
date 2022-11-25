import 'package:flutter/material.dart';
import 'package:mood_app/main.dart';

class Greeting extends StatefulWidget {
  const Greeting({Key? key}) : super(key: key);

  @override
  _GreetingState createState() => _GreetingState();
}

class _GreetingState extends State<Greeting> {
  @override
  void initState() {
    super.initState();
    _homeScreen();
  }

  _homeScreen() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MoodSelection(
                  title: 'Mood Selection',
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                child: Image.asset(
      'assets/images/Logo.png',
      height: 400,
      width: 400,
    ))));
  }
}
