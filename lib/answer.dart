import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({Key? key, this.selectHandler}) : super(key: key);
  final Function selectHandler;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: () => _answerQuestion(questions.length),
        child: const Text('Answer 1'),
      ),
    );
  }
}
