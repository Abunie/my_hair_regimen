import 'package:myhairregimen/widgets/gradient_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../app_theme.dart';
import '../quiz.dart';
import 'hair_density_results.dart';


class HairDensityQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HairDensityQuizState();
  }
}

class _HairDensityQuizState extends State<HairDensityQuiz> {
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
          {'text': 'Low Density Ponytail', 'score': 1, 'ansImage': 'assets/media/quiz/Answers/HairDensity/low_ponytail.png',},
          {'text': 'Meduim Density Ponytail', 'score': 2, 'ansImage': 'assets/media/quiz/Answers/HairDensity/medium_ponytail.png', },
          {'text': 'High Density Ponytail', 'score': 3, 'ansImage': 'assets/media/quiz/Answers/HairDensity/high_ponytail.png', },
        ],

      },
      {
        'questionText': 'What does your hair look like in mini twists ? ',
        'answers': [
          {'text': 'Low Density Twists', 'score': 1, 'ansImage': 'assets/media/quiz/Answers/HairDensity/low_twists.png',},
          {'text': 'Medium Density Twists', 'score': 2, 'ansImage': 'assets/media/quiz/Answers/HairDensity/medium_twists.png',},
          {'text': 'High Density Twists', 'score': 3, 'ansImage': 'assets/media/quiz/Answers/HairDensity/high_twists.png', },
        ]
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
              : HairDensityResult(_totalScore, _restartQuiz)),
    );
  }
}
