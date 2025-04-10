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


@override
  Widget build(context){


    return  MaterialApp(
    home: Scaffold(

      
      body:
       Container(
        decoration: BoxDecoration(

          gradient:LinearGradient(colors:[
            const Color.fromARGB(255, 147, 17, 170),
            const Color.fromARGB(255, 8, 90, 156),


          ])
        ),
        
        child:  StartScreen())
    ),
  );



   }


  




}
