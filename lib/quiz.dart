import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});




  @override
  State<Quiz> createState() {
    return _QuizeState();
  }
}

class _QuizeState extends State<Quiz> {
  List<String> selectedAnswers = [];


  var activeScreen = 'start-screen';


  void switchScreen() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
      Widget screenWidget = StartScreen( switchScreen);

      if(activeScreen == 'question-screen'){
      screenWidget = QuestionsScreen( onSelectAnswer: chooseAnswer);

    }

    if(activeScreen == 'results-screen'){
      screenWidget = ResultsScreen( ChoosenAnswers: selectedAnswers,);




    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 147, 17, 170),
              Color.fromARGB(255, 8, 90, 156),
            ])),
            child: screenWidget),
      ),
    );
  }
}
