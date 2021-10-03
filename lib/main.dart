import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  _answerQuestion(questionsLength) {
    setState(() {
      if (_questionIndex >= questionsLength - 1) {
        _questionIndex = 0;
      } else {
        _questionIndex += 1;
      }
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            Text(
              questions[_questionIndex],
            ),
            ElevatedButton(
              onPressed: () => _answerQuestion(questions.length),
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => _answerQuestion(questions.length),
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () => _answerQuestion(questions.length),
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
