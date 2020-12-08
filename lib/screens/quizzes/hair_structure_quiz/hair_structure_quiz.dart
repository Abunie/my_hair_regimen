import 'package:myhairregimen/widgets/gradient_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../app_theme.dart';
import '../quiz.dart';
import 'hair_structure_results.dart';


class HairStructureQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HairStructureQuizState();
  }
}

class _HairStructureQuizState extends State<HairStructureQuiz> {
  var _questionIndex = 0;
  var _totalScore = 0;

  _answerQuestion(int score) {
    setState(() {
      _questionIndex ++;
      _totalScore += score;
    });
    print(_questionIndex);
  }

  _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'How big is the circumference of your hair when it is in a ponytail?',
        'answers': [
          {'text': 'Fine Hair', 'score': 1, 'ansImage': 'assets/media/quiz/Answers/HairStructure/fine_vs_thread.png',},
          {'text': 'Medium Hair', 'score': 2, 'ansImage': 'assets/media/quiz/Answers/HairStructure/medium_vs_thread.png', },
          {'text': 'Course(Thick) Hair', 'score': 3, 'ansImage': 'assets/media/quiz/Answers/HairStructure/course_vs_thread.png', },
        ],

      },
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: AppTheme.themeColor),
      home: Scaffold(
          backgroundColor: AppTheme.background,
          body: _questionIndex < _questions.length
              ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
          )
              : HairStructureResult(_totalScore, _restartQuiz)),
    );
  }
}
