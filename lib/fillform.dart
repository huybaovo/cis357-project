import 'package:flutter/material.dart';
import 'package:mood_app/main.dart';

final List<String> questions = <String>
['Events today make me look forward to tomorrow.', 'I felt that I spent my time well today.',
'I ate well today.','I have slept well for today.',
'I feel energetic.','I feel relaxed and not stressed.',
'I am optimistic today.','I feel enthusiastic today.',
'I had a meaningful day','I great about myself today.'];

class FillForm extends StatelessWidget {
  const FillForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),

        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: questions.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 100,
              child: Container(
                  child: Column(
                      children: <Widget>[
                        Text('${questions[index]}', textScaleFactor: 1.2,),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter 1 to 10 (Disagree/Agree)',
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ],
                  ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
      ),
    );
  }
}

