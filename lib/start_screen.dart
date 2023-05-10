import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
   const StartScreen(this.startQuiz, {super.key});

   final void Function() startQuiz;

   @override
   Widget build(context) {
      return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // children: [
              //   Opacity(
              //     opacity: 0.9,
              //     child :
              //     Image.asset('assets/images/quemark2.png', width: 300),
              //   ),
              Image.asset('assets/images/quemark2.png', width: 300,
              // color: Colors.white,
              ),
                  const SizedBox(height: 40),
                  Text(
                    'Quiz! is on to next slide',
                    style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),

                  const SizedBox(height:40),
                  OutlinedButton.icon(
                    onPressed: startQuiz,
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                    ),
                    icon: const Icon(Icons.arrow_right_alt),
                    label: const Text('Start Quiz'),
                  )
                ],
              ),
      );
   }
}