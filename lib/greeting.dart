import 'package:flutter/material.dart';
import 'package:mood_app/main.dart';
import 'package:delayed_display/delayed_display.dart';

class Greeting extends StatefulWidget {
  const Greeting({Key? key}) : super(key: key);
  @override
  _GreetingState createState() => _GreetingState();
}

class _GreetingState extends State<Greeting> {
  var displayGreeting = false;

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

  _displayGreeting() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    var displayGreeting = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.white,
            Color(0xff3c9786ff),
            Colors.blueGrey,
          ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: Image.asset(
            'assets/images/Logo.png',
            height: 400,
            width: 400,
          )),
          DelayedDisplay(
              delay: Duration(milliseconds: 1500),
              child: Text(
                "Hey, How are you today?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    fontStyle: FontStyle.italic),
              ))
        ],
      ),
    )));
  }
}
