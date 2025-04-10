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

  Widget activeScreen = const StartScreen();
    
    void switchScreen (){
      setState(() {

        activeScreen =  const QuestionsScreen();



      });




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
        
        child:  activeScreen)
    ),
  );



   }


  




}
