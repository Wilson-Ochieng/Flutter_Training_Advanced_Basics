import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

void  main (){


runApp(
   MaterialApp(
    home: Scaffold(

      
      body:
       Container(
        decoration: BoxDecoration(

          gradient:LinearGradient(colors:[
            const Color.fromARGB(255, 147, 17, 170),
            const Color.fromARGB(255, 8, 90, 156),


          ])
        ),
        
        child:  StartScreen()),
    ),
  )


);

 







}
