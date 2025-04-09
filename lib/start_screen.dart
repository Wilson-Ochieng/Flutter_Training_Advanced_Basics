import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(

        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(255, 230, 207, 207),
          ),
          const  SizedBox(height: 10),
           const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),

          OutlinedButton.icon(onPressed: () {},
          icon: const Icon(Icons.arrow_right_alt),

          label:  const Text('Start Quiz'),
          style: OutlinedButton.styleFrom(

            foregroundColor: Colors.white,

          )) ,
          
                ],
      ),
    );
  }
}
