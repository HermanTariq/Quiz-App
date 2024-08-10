import 'package:flutter/material.dart';
import 'package:quiz_app/myhomepage.dart';
import 'package:quiz_app/question.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var activescreen = "Start-Screen";

  void switchScreen() {
    setState(() {
      activescreen = "Question-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenwidget = MyHomePage(
      startQuiz: switchScreen,
    );
    if (activescreen == "Question-screen") {
      screenwidget = Quesstion();
    }

    return MaterialApp(
      title: 'My Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: screenwidget,
    );
  }
}
