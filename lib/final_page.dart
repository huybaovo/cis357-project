import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({Key? key}) : super(key: key);

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.white,
            Color(0xff9ad0faff),
            Colors.blueGrey,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Improve your mood :)'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text('Hey !!!'),
                            content: Text(
                                'Thank you for caring about your own emotion <3 '
                                'Even you had a good or bad day, remember, tomorrow will be a new day for you to start fresh!'),
                            actions: [
                              TextButton(
                                child: Text('OK'),
                                onPressed: () => Navigator.pop(context),
                              )
                            ],
                      )
                  );
                },
                icon: const Icon(Icons.star))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/happy.png'),
              const Divider(
                color: Colors.white,
              ),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://youtu.be/inpok4MKVLM'),
                builder: (context, followLink) => ElevatedButton(
                  child: Text("LET'S MEDITATE ^_^"),
                  onPressed: followLink,
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
              Image.asset('assets/images/angry.png'),
              const Divider(
                color: Colors.white,
              ),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://youtu.be/inpok4MKVLM'),
                builder: (context, followLink) => ElevatedButton(
                  child: Text("LET'S GO RUNNING ^_^"),
                  onPressed: followLink,
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
              Image.asset('assets/images/neutral2.png'),
              const Divider(
                color: Colors.white,
              ),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://youtu.be/waSIxIPEJDE'),
                builder: (context, followLink) => ElevatedButton(
                  child: Text("LET'S LISTEN TO A SONG ~.~"),
                  onPressed: followLink,
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
