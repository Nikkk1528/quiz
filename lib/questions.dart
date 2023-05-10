import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/realquestions.dart';

class Question extends StatefulWidget{
  const Question({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<Question> createState() {
    return _Question();
  }
}
// Done By Nikkhil
class _Question extends State<Question>{
  var currentQindex = 0;

  void answerQuestion(String selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQindex++;
      //currentQindex +=1;
      //currentQindex = currentQindex + 1 ;
    });
  }
  @override
  Widget build(context) {
    final currentque = questions[currentQindex];

    return SizedBox(
      width:  double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentque.text,
              style: GoogleFonts.lato(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentque.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: ( ) {
                  answerQuestion(answer);
                },
              );
            })
         ],
        ),
      ),
    );
  }
}

