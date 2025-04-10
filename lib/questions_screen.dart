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
    return Column(
      children: [
        const Text('Questions'),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(onPressed: () {}, child: Text('Answer 1')),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(onPressed: () {}, child: Text('Answer 2')),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(onPressed: () {}, child: Text('Answer 3')),
      ],
    );
  }
}
