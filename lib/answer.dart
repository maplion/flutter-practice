import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final int questionsLength;
  final String answerText;

  const Answer(
      {Key? key,
      required this.selectHandler,
      required this.questionsLength,
      required this.answerText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () => selectHandler(questionsLength),
        child: Text(answerText),
      ),
    );
  }
}
