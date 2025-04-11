import 'package:flutter/material.dart';

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
            const Text('Questions'),
             const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Answer 1')),
            const   SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Answer 2')),
            const  SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Answer 3')),
          ],
        ),
      );
    
  }
}
