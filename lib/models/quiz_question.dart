class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List <String> answers;

  List <String> getShuffledAnswers(){
    final shuffledllist = List.of(answers);
    shuffledllist.shuffle();
    return shuffledllist;
  }
}