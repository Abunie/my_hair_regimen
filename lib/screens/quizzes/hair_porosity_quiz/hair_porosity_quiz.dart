import 'package:myhairregimen/widgets/gradient_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../app_theme.dart';
import '../quiz.dart';
import 'hair_porosity_results.dart';


class HairPorosityQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HairPorosityQuizState();
  }
}

class _HairPorosityQuizState extends State<HairPorosityQuiz> {
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
        'questionText': 'Do you currently have chemically treated hair?',
        'answers': [
          {'text': 'Yes', 'score': 5, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/yes_paula.png',},
          {'text': 'Nope', 'score': 1, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/maybe_paula.png', },
          {'text': 'I\'m  not sure', 'score': 3, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/no_paula.png', },
        ],

      },
      {
        'questionText': 'Are you suffering from heat damage?',
        'answers': [
          {'text': 'Yes', 'score': 5, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/yes_jayden.png', },
          {'text': 'Maybe', 'score': 3, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/maybe_jayden.png',},
          {'text': 'No', 'score': 1, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/no_jayden.png', },
        ]
      },
      {
        'questionText': 'How long does it take for your hair to absorb water ?',
        'answers': [
          {'text': 'It takes quite some time to absorb', 'score': 1, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/a_while.png',},
          {'text': 'It absorbs immediately', 'score': 7, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/imeddiately.png',},
          {'text': 'It absorbs in about a minute', 'score': 3,'ansImage': 'assets/media/quiz/Answers/HairPorosity/minute.png',},
        ]
      },
      {
        'questionText': 'When you wet your hair in the shower does your body dry faster than your hair  or vice versa ?',
        'answers': [
          {'text': 'My hair dries faster than my body', 'score': 5,'ansImage': 'assets/media/quiz/Answers/HairPorosity/hair_dries_faster.png',},
          {'text': 'They take about the same time to dry ', 'score': 7, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/same_rate.png',},
          {'text': 'My body dries faster than my hair', 'score': 3, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/bodydries.png',},
        ]
      },
      {
        'questionText': 'How does your hair respond to protein ?',
        'answers': [
          {'text': 'My hair becomes stiff and brittle.', 'score': 2, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/stiffandbrittle.png',},
          {'text': 'I don\'t notice any changes.', 'score': 3, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/no_changes.png',},
          {'text': 'My hair becomes stronger and more textured.', 'score': 5, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/strongerandtextured.png',},
          {'text': 'I don\'t use protein in my hair', 'score': 3, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/no_protein.png',},
        ]
      },
      {
        'questionText': 'Which these experiences sound most familiar ?',
        'answers': [
          {'text': 'Product sits on my hair and ends up looking like grease or buildup.', 'score': 1, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/productsits.png',},
          {'text': 'My hair absorbs products like a sponge, so I have to use a lot of product', 'score': 5, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/absorbslikesponge.png',},
          {'text': 'I don\'t really have either of these issues', 'score': 3, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/neither_issues.png',}
        ]
      },
      {
        'questionText': 'Does your hair abosorb products best when it wet ?',
        'answers': [
          {'text': 'Yes', 'score': 2,'ansImage': 'assets/media/quiz/Answers/HairPorosity/yes_paula.png',},
          {'text': 'Either way works for me', 'score': 3,'ansImage': 'assets/media/quiz/Answers/HairPorosity/either.png',},
          {'text': 'No', 'score': 5,'ansImage': 'assets/media/quiz/Answers/HairPorosity/no_paula.png',},
        ]
      },
      {
        'questionText': 'When you place a clean strand of your hair in a glass of water where does it sit after 5 minutes ?',
        'answers': [
          {'text': 'Right on top', 'score': 1, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/top.png',},
          {'text': 'In the middle', 'score': 3, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/middle.png',},
          {'text': 'On the bottom', 'score': 5, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/bottom.png',},
        ]
      },
      {
        'questionText': 'Take a strand of hair and slide your fingers up the shaft (toward the scalp). How does it feel ?',
        'answers': [
          {'text': 'My fingers slip smoothly', 'score': 1, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/smooth.png',},
          {'text': 'It feels a bit bumpy', 'score': 3, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/bit_bumpy.png',},
          {'text': 'I feels very bumpy', 'score': 5, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/bumpy_hair.png',},
        ]
      },
      {
        'questionText': 'Does your hair tangle easily compared to other poeple with similar curl patterns as you ?',
        'answers': [
          {'text': 'Yes', 'score': 1, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/yes_amanda.png',},
          {'text': 'It tangles about the same way as other people with similar curl patterns', 'score': 3, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/sometimes_amanda.png',},
          {'text': 'No', 'score': 5, 'ansImage': 'assets/media/quiz/Answers/HairPorosity/no_amanda.png',},
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
              : HairPorosityResult(_totalScore, _restartQuiz)),
    );
  }
}
