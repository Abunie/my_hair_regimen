import 'package:myhairregimen/models/intro_quiz_answers.dart';
import 'package:myhairregimen/models/product_list_data.dart';
import 'package:myhairregimen/screens/authenticate/loginPage.dart';
import 'package:myhairregimen/screens/authenticate/signin_options.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myhairregimen/app_theme.dart';
import 'package:myhairregimen/screens/quizzes/introductory_quiz/hair_length_question.dart';
import 'package:myhairregimen/widgets/quiz_app_bar.dart';
import 'package:myhairregimen/widgets/quiz_button.dart';

import '../../auth_wrapper.dart';

class Results extends StatefulWidget {

  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results>
    with TickerProviderStateMixin {
  Animation<double> topBarAnimation;
  AnimationController animationController;

  IntroQuizAnswers _quiz = new IntroQuizAnswers();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: QuizAppBar(),
        body: Column(
          children: [
            Text("Hair Porosity : " + IntroQuizAnswers().hairPorosity , textAlign: TextAlign.center,  style: TextStyle(fontSize: 26)),
            Text("Hair Density : " + IntroQuizAnswers().hairDensity, textAlign: TextAlign.center, style: TextStyle(fontSize: 26)),
            Text("Hair Length : " + IntroQuizAnswers().hairLength, textAlign: TextAlign.center, style: TextStyle(fontSize: 26)),
            Text("Hair Structure : " + IntroQuizAnswers().hairStructure, textAlign: TextAlign.center, style: TextStyle(fontSize: 26)),
            Text("Hair Structure : " + IntroQuizAnswers().curlPattern, textAlign: TextAlign.center, style: TextStyle(fontSize: 26)),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: RaisedButton(
                child: Text('Sign Up to See Customized Regimen'),
                color: AppTheme.themeColor,
                textColor: Colors.white,
                onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context)=> SignInOptions()));
                },
              ),
            )
            ]
        )
    );
  }
}



