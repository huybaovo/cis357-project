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
              Image.network('https://cdn.dribbble.com/users/1421577/screenshots/4859470/pandamediatte.gif',
                height: 300,
                width: 500,
              ),
              const Divider(
                color: Colors.white,
              ),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://youtu.be/inpok4MKVLM'),
                builder: (context, followLink) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      onPrimary: Colors.white,
                      shadowColor: Colors.greenAccent,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)
                      ),
                      minimumSize: Size(120, 60)
                  ),

                  child: Text("LET'S MEDITATE ^_^"),
                  onPressed: followLink,
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
              Image.network('https://media.tenor.com/8UkZbBUUAtUAAAAC/cute-rabbit.gif',
                height: 300,
                width: 500,
              ),
              const Divider(
                color: Colors.white,
              ),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://youtu.be/inpok4MKVLM'),
                builder: (context, followLink) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)
                      ),
                      minimumSize: Size(120, 60)
                  ),
                  child: Text("LET'S GO RUNNING ^_^"),
                  onPressed: followLink,

                ),
              ),
              const Divider(
                color: Colors.white,
              ),
              Image.network('https://media.tenor.com/PaWj2HJ3rBsAAAAM/listening-to-music-headphones.gif',
                height: 300,
                width: 500,
              ),
              const Divider(
                color: Colors.white,
              ),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://youtu.be/waSIxIPEJDE'),
                builder: (context, followLink) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                      shadowColor: Colors.greenAccent,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)
                      ),
                      minimumSize: Size(120, 60)
                  ),
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
