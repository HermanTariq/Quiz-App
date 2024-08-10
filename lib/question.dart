import 'package:flutter/material.dart';
import 'package:quiz_app/answerbutton.dart';
import 'package:quiz_app/data/questiondata.dart';

class Quesstion extends StatefulWidget {
  const Quesstion({super.key});
  @override
  State<Quesstion> createState() => _QuesstionState();
}

class _QuesstionState extends State<Quesstion> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return Center(
        child: Container(
      color: const Color.fromARGB(255, 160, 104, 255),
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 1,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.question,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.none),
            ),
            SizedBox(
              height: 30,
            ),
            ...currentQuestion.questionanswer.map((answer) {
              return AnswerButton(answer: answer, answerbuttonaction: () {});
            })
          ],
        ),
      ),
    ));
  }
}
