import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';


class Quiz extends StatefulWidget {

 const  Quiz({super.key});

   @override

 State<Quiz> createState() {
  return _QuizeState();

  }

}


class _QuizeState extends   State<Quiz> {

 List<String> selectedAnswers = [];

   var  activeScreen =  'start-screen';


   @override
    
    void switchScreen (){

      setState(() {
        selectedAnswers = [];
        activeScreen = 'question-screen';



      });




    }


   void  chooseAnswer (String answer) {


      selectedAnswers.add(answer);
 if (selectedAnswers.length == questions.length){
   setState(() {
      activeScreen = 'start-screen';
   });

 }

    }


@override
  Widget build(context) {
    


    return  MaterialApp(
    home: Scaffold(

      
      body:
       Container(
        decoration: const  BoxDecoration(

          gradient:LinearGradient(colors:[
             Color.fromARGB(255, 147, 17, 170),
           Color.fromARGB(255, 8, 90, 156),


          ])
        ),
        
        child:  activeScreen == 'start-screen'? StartScreen(switchScreen): QuestionsScreen(onSelectAnswer: chooseAnswer)),
    ),
  );



   }


  




}
