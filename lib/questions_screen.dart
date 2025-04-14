import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion (){

    setState(() {
       currentQuestionIndex++;

      
    });

   
  }
  
  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentQuestion.text,
              style: const  TextStyle(color: Color.fromARGB(255, 243, 243, 243)),
            ),
             ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton( answerText: answer, onTap: answerQuestion
              );
        
            })
          ],
        ),
      ),
    );
  }
}
