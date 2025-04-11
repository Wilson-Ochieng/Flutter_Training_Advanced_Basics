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
  @override
  Widget build(context) {
    return 
      SizedBox(
        width: double.infinity,
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Questions',style: TextStyle(color: Color.fromARGB(255, 243, 243, 243)),),
           AnswerButton(answerText: 'Answer 1', onTap: (){}),
           AnswerButton(answerText: 'Answer 2', onTap: (){}),
           AnswerButton(answerText: 'Answer 3', onTap: (){}),
           AnswerButton(answerText: 'Answer 4', onTap: (){}),],
        ),
      );
    
  }
}
