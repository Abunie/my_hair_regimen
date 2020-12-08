import 'package:myhairregimen/widgets/gradient_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../app_theme.dart';
import '../quiz.dart';
import 'curl_pattern_results.dart';


class CurlPatternQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CurlPatternQuizState();
  }
}

class _CurlPatternQuizState extends State<CurlPatternQuiz> {
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
        'questionText': 'Which of these best explains how your hair looks?',
        'answers': [
          {'text': 'Big loose spiral curls', 'score': 1, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/3a_description.png',},
          {'text': 'Bouncy ringlets', 'score': 2, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/3b_description.png', },
          {'text': 'Tight corkscrews', 'score': 3, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/3c_description.png', },
          {'text': 'Tightly coiled S-curls', 'score': 4, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/4a_description.png',},
          {'text': 'Z-patterned (tightly coiled, sharp angled)', 'score': 5, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/4b_description.png', },
          {'text': 'Mostly Z-pattern (tightly kinked, less defination)', 'score': 6, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/4c_description.png', },
        ],

      },
      {
        'questionText': 'Which of these hair strands looks more like your hair ? ',
        'answers': [
          {'text': '3A Strand', 'score': 1, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/3a_strand.png',},
          {'text': '3B Strand', 'score': 2, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/3b_strand.png',},
          {'text': '3C Strand', 'score': 3, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/3c_strand.png', },
          {'text': '4A Strand', 'score': 4, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/4a_strand.png', },
          {'text': '4B Strand', 'score': 5, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/4b_strand.png',},
          {'text': '4C Strand', 'score': 6, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/4c_strand.png', },
        ]
      },
      {
        'questionText': 'Which of these looks more like your hair ?',
        'answers': [
          {'text': '3A person', 'score': 1, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/3a_person.png',},
          {'text': '3B person', 'score': 2, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/3b_person.png',},
          {'text': '3C person', 'score': 3,'ansImage': 'assets/media/quiz/Answers/CurlPattern/3c_person.png',},
          {'text': '4A person', 'score': 4, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/4a_person.png',},
          {'text': '4B person', 'score': 5, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/4b_person.png',},
          {'text': '4C person', 'score': 6,'ansImage': 'assets/media/quiz/Answers/CurlPattern/4c_person.png',},
        ]
      },
      {
        'questionText': 'Let\'s get a little closer. Which of these looks more like your hair ?',
        'answers': [
          {'text': '3A Hair', 'score': 1, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/3a_hair.jpg',},
          {'text': '3B Hair', 'score': 2, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/3b_hair.png',},
          {'text': '3C Hair', 'score': 3, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/3c_hair.png',},
          {'text': '4A Hair', 'score': 4, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/4a_hair.png',},
          {'text': '4B Hair', 'score': 5, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/4b_hair.png',},
          {'text': '4C Hair', 'score': 6, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/4c_hair.png',},
        ]
      },
      {
        'questionText': 'How does yout hair react when wet?',
        'answers': [
          {'text': 'My hair enlongates.', 'score': 1, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/3a_wet.png',},
          {'text': 'My hair gets more curly and shrinks a bit.', 'score': 3, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/3b_wet.png',},
          {'text': 'My hair shrinks by about 40%. ', 'score': 5, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/3c_wet.png',},
          {'text': 'My hair shrinks by about 50%. ', 'score': 5, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/4a_wet.png',},
          {'text': 'My hair shrinks by about 70%. ', 'score': 5, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/4b_wet.png',},
          {'text': 'My hair shrinks by about 90%. ', 'score': 5, 'ansImage': 'assets/media/quiz/Answers/CurlPattern/4c_wet.png',},
        ]
      }
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
              : CurlPatternResult(_totalScore, _restartQuiz)),
    );
  }
}
