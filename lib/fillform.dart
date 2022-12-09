import 'package:flutter/material.dart';
import 'package:mood_app/final_page.dart';
import 'package:mood_app/main.dart';

final List<String> questions = <String>
['I have something to look forward to tomorrow.', 'I felt that I spent my time well today.',
'I ate well today.','I have slept well for today.',
'I feel energetic.','I feel relaxed and not stressed.',
'I am optimistic today.','I feel enthusiastic today.',
'I had a meaningful day','I great about myself today.'];

class FillForm extends StatelessWidget {
  const FillForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tell me more...'),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
          },
            icon: const Icon(Icons.arrow_back),)
          // actions: <Widget>[
          //   IconButton(
          //     icon: const Icon(Icons.cancel),
          //     onPressed: (){Navigator.pop(context);},
          //   ),
          // ],
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Color(0xffF3B6CEFF),
                  ])),
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: questions.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                child: Container(
                    child: Column(
                        children: <Widget>[
                          Text('${questions[index]}', textScaleFactor: 1.2,),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed:() {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: Text('Oops ><'),
                                          content: Text("I'm sorry to hear that, but I can help ^_^"),
                                          actions: [
                                            TextButton(
                                                child: Text('Sure!'),

                                                onPressed: () => Navigator.of(context).push(
                                                              MaterialPageRoute(builder: (BuildContext context) {
                                                                return const FinalPage();}),),
                                            ),
                                            TextButton(
                                                child: Text('Maybe later'),
                                                onPressed: () => Navigator.pop(context),

                                                ),
                                          ],
                                        )
                                    );
                                  },
                                  icon: Icon(
                                    Icons.sentiment_very_dissatisfied,
                                    color: Colors.red,
                                    size: 50,)
                              ),
                              IconButton(
                                  onPressed:() {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: Text('Hmm...'),
                                          content: Text("Do you want to feel better?"),
                                          actions: [
                                            TextButton(
                                              child: Text('Duh!!!'),

                                              onPressed: () => Navigator.of(context).push(
                                                MaterialPageRoute(builder: (BuildContext context) {
                                                  return const FinalPage();}),),
                                            ),
                                            TextButton(
                                              child: Text('Maybe later'),
                                              onPressed: () => Navigator.pop(context),
                                            ),
                                          ],
                                        )
                                    );
                                  },
                                  icon: Icon(
                                    Icons.sentiment_dissatisfied,
                                    color: Colors.redAccent,
                                    size: 50,)
                              ),
                              IconButton(
                                  onPressed:() {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: Text('Hey!'),
                                          content: Text("I bet you are doing better than you think ^^"),
                                          actions: [
                                            TextButton(
                                              child: Text('Thank you :)'),
                                              onPressed: () => Navigator.pop(context),
                                            ),
                                          ],
                                        )
                                    );
                                  },
                                  icon: Icon(
                                    Icons.sentiment_neutral,
                                    color: Colors.amber,
                                    size: 50,)
                              ),
                              IconButton(
                                  onPressed:() {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: Text('Wow!'),
                                          content: Text("That's great. Keep up with the good habit >.< "),
                                          actions: [
                                            TextButton(
                                              child: Text('Thank you ~.~'),
                                              onPressed: () => Navigator.pop(context),
                                            ),
                                          ],
                                        )
                                    );
                                    },
                                  icon: Icon(
                                    Icons.sentiment_satisfied,
                                    color: Colors.lightGreen,
                                    size: 50,)
                              ),
                              IconButton(
                                  onPressed:() {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: Text('Awesome *_*'),
                                          content: Text("Hurry complete the form to feel even better ^_^"),
                                          actions: [
                                            TextButton(
                                              child: Text("Can't wait !!!"),
                                              onPressed: () => Navigator.pop(context),
                                            ),
                                          ],
                                        )
                                    );
                                  },
                                  icon: Icon(
                                    Icons.sentiment_very_satisfied,
                                    color: Colors.green,
                                    size: 50,)
                              ),
                            ],
                          )
                        ],
                    ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) {
                return const FinalPage();
              }),
            );
          },
          child: const Icon(Icons.check),
        ),
      ),
    );
  }
}

