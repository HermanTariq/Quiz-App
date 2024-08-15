import 'package:flutter/material.dart';
import 'package:quiz_app/data/questiondata.dart';
import 'package:quiz_app/myhomepage.dart';
import 'package:quiz_app/question.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<String> selectedanswer = [];
  var activescreen = "Start-Screen";

  void switchScreen() {
    setState(() {
      activescreen = "Question-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedanswer.add(answer);
    if (selectedanswer.length == questions.length) {
      setState(() {
        activescreen = "Start-Screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenwidget = MyHomePage(
      startQuiz: switchScreen,
    );
    if (activescreen == "Question-screen") {
      screenwidget = Quesstion(
        onSelectanswer: chooseAnswer,
      );
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
