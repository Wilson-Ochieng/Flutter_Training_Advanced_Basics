import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';


class Quiz extends StatefulWidget {

 const  Quiz({super.key});

   @override

 State<Quiz> createState() {
  return _QuizeState();

  }

}


class _QuizeState extends   State<Quiz> {
   var  activeScreen =  'start-screen';


   @override
    
    void switchScreen (){

      setState(() {
        activeScreen = 'question-screen';



      });




    }


@override
  Widget build(context) {
    Widget screenWidget =  StartScreen(switchScreen);

    if ( activeScreen == 'start-startscreen'){

      screenWidget = const  QuestionsScreen();



    }


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
        
        child:  screenWidget),
    ),
  );



   }


  




}
