import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.deepPurple, Colors.deepPurpleAccent])),
          child: Column(
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.75,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Image.asset('assets/images/quiz-logo.png')),
              )),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Start Quiz',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              )
            ],
          )),
    );
  }
}
