import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answer, required this.answerbuttonaction});

  final String answer;
  final void Function() answerbuttonaction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: answerbuttonaction,
          style: ElevatedButton.styleFrom(),
          child: Text(answer),
        ),
      ),
    );
  }
}
