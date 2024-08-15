class QuizQuestion {
  const QuizQuestion(this.question, this.questionanswer);
  final String question;
  final List<String> questionanswer;

  List<String> getshuflledanswer() {
    final shufledList = List.of(questionanswer);
    shufledList.shuffle();
    return shufledList;
  }
}
