# Overview

In this demonstration we will be building a demo mood mobile application that gives words of 
encouragement and advice to uplift the users day based on what they select. For this demonstration 
purpose, we will be focusing on using Flutter to implement the mood mobile app by using a some of 
the many feature the Flutter framework offers.

# Getting Started With Flutter

Flutter is an open-source UI development kit framework created by Google to develop
cross-platform applications using Windows, macOS, Linux, and ChromeOS as the operating system.
Flutter can be used with any text editors with their command-line tools but is recommended to
use with their plugin on VS Studio Code,VS Code, Android studio, or IntelliJ as the IDE.

To get started with Flutter, download the Flutter SDK offered from the official site for your OS
and install it into any directory that does not require elevated privileges.
- [Download: Get Flutter Here](https://docs.flutter.dev/get-started/install)

You also will need Android Studio version 2020.3.1 (Artic Fox) or later to operate Flutter for this
demo application.
- [Download: Get Latest Android Studio Here](https://developer.android.com/studio)

Next, watch the installation video to help with the installation of Flutter onto your device.
Note that the video will use VS code to install Flutter and also go over installing Flutter into
VS code.
- [Installation Video: Codemy.com Video](https://www.youtube.com/watch?v=VFDbZk2xhO4)
- [Optional: Visual Studio Code](https://code.visualstudio.com/download)

# Step-by-step Coding Instructions

On the command line, run flutter --version to verify that the SDK is installed and recognized.
Afterward:
- Make sure the full path to your flutter/bin is added to your Path under Environmental Variables.
- Run flutter doctor to make sure that the path to flutter is recognized.
- Download the Dart and Flutter extensions on Android Studio.

Demonstration Video:
- [Youtube Demonstration Video]()

When designing your widget, 

An example of transitioning by pushing widgets to another screen.
```
 floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple[200],
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) {
                return const FinalPage();
              }),
            );
          },
          child: const Icon(Icons.check),
        ),
```

# Further Discussion/Conclusion

While this is one way of implementing this demo mood mobile application, there are different 
approaches to implement the questionnaire that we implemented using SingleChildScrollView, 
IconButton, Text, and Row as some of the features Flutter SDK offers. By using third-party libraries,
this is can be accomplished by using the SurveyKit Library by QuickBird Studio which offers creation
of surveys inspired by the iOS ResearchKit Surveys. Another option of implementation is adjusting
widget orders for styling and formatting of scaffolds, containers, columns, and rows.
- [Repository Link](https://github.com/huybaovo/cis357-project)

# See Also:

Flutter Documentation Help and Examples:
- [Online Documentations](https://flutter.dev/docs)
- [Documentations: Useful Flutter samples](https://flutter.dev/docs/cookbook)
- [udemy: Flutter Course](https://www.udemy.com/course/flutter-bootcamp-with-dart/?utm_source=adwords&utm_medium=udemyads&utm_campaign=GoogleFlutter_v.PROF_la.EN_cc.US&utm_content=deal4584&utm_term=_._ag_113411705010_._ad_622358216560_._kw__._de_c_._dm__._pl__._ti_dsa-1184681151762_._li_9017523_._pd__._&matchtype=&gclid=Cj0KCQiA1sucBhDgARIsAFoytUtY8hBfj8mECXDTBiv7fnpmfGZtjcugGYQJIFHGZNjWukCYPL5TBv0aAgEvEALw_wcB)
