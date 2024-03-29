import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz({
    @required this.answerQuestion,
    @required this.questions,
    @required this.questionIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      spacing: 5.0,
      runSpacing: 5.0,
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
              (answer) => Answer(
            answer['text'],
                () => answerQuestion(answer['score']),
            answer['ansImage'],

          ),
        ).toList(),
      ],
    );
  }
}
