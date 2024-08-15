import 'package:flutter/material.dart';
import 'package:quiz_app/answerbutton.dart';
import 'package:quiz_app/data/questiondata.dart';

class Quesstion extends StatefulWidget {
  const Quesstion({super.key, required this.onSelectanswer});

  final void Function(String answer) onSelectanswer;

  @override
  State<Quesstion> createState() => _QuesstionState();
}

class _QuesstionState extends State<Quesstion> {
  var currrentindex = 0;
  void answerQuestion(selectedanswer) {
    widget.onSelectanswer(selectedanswer);
    setState(() {
      currrentindex = currrentindex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currrentindex];
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
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getshuflledanswer().map((answer) {
              return AnswerButton(
                  answer: answer,
                  answerbuttonaction: () {
                    answerQuestion(answer);
                  });
            })
          ],
        ),
      ),
    ));
  }
}
