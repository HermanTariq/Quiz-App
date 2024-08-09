import 'package:flutter/material.dart';
import 'package:quiz_app/myhomepage.dart';
import 'package:quiz_app/question.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Widget? activescreen;
  @override
  void initState() {
    activescreen = MyHomePage(
      startQuiz: switchScreen,
    );
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activescreen = const Quesstion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: activescreen,
    );
  }
}
