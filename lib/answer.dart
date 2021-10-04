import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(
      {Key? key, required this.selectHandler, required this.questionsLength})
      : super(key: key);
  final Function selectHandler;
  final int questionsLength;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: () => selectHandler(questionsLength),
        child: const Text('Answer 1'),
      ),
    );
  }
}
