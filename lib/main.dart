import 'package:flutter/material.dart';
import 'package:mood_app/greeting.dart';
import 'package:mood_app/fillform.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Greeting(),
    );
  }
}

class MoodSelection extends StatefulWidget {
  MoodSelection({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MoodSelectionState createState() => _MoodSelectionState();
}

class _MoodSelectionState extends State<MoodSelection> {
  void _moodLevel() {
    // This action currently does nothing but based on what is selected
    // will prop certain actions.
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.white,
                Color(0xff9ad0faff),
                Colors.blueGrey,
              ])),
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'How are you feeling today?',
                style: TextStyle(fontSize: 25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    iconSize: 48,
                    icon: Image.asset(
                      'assets/images/thinking.png',
                      height: 50,
                      width: 50,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FillForm()));
                    },
                  ),
                  IconButton(
                    iconSize: 48,
                    icon: Image.asset(
                      'assets/images/happy.png',
                      height: 50,
                      width: 50,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text('You are HAPPY'),
                                content: Text(
                                    'Good to know! You are one lucky person :D'),
                              ));
                    },
                  ),
                  IconButton(
                    iconSize: 48,
                    icon: Image.asset(
                      'assets/images/neutral2.png',
                      height: 50,
                      width: 50,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text('Neutral'),
                                content: Text(
                                    'Exciting things are waiting for you ^.^'),
                              ));
                    },
                  ),
                  IconButton(
                    iconSize: 48,
                    icon: Image.asset(
                      'assets/images/sad.png',
                      height: 50,
                      width: 50,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text('Aw...'),
                                content: Text(
                                    "Don't worry! I'll be right here with you <3"),
                              ));
                    },
                  ),
                  IconButton(
                    iconSize: 48,
                    icon: Image.asset(
                      'assets/images/cry.png',
                      height: 50,
                      width: 50,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text('Hi there !'),
                                content: Text(
                                    'Cry as much as you want. Then I can help you feel better ~.~'),
                              ));
                    },
                  ),
                  IconButton(
                    iconSize: 48,
                    icon: Image.asset(
                      'assets/images/angry.png',
                      height: 50,
                      width: 50,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text('Oops'),
                                content: Text(
                                    "You will not be angry anymore after seeing this ><"),
                                actions: [
                                  TextButton(
                                    child: Text('See what ?'),
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: Text('Hello from me...'),
                                          content: Image.network(
                                              'https://media.tenor.com/8UkZbBUUAtUAAAAC/cute-rabbit.gif'),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
