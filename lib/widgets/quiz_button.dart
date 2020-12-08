import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:myhairregimen/app_theme.dart';
import 'package:myhairregimen/screens/quizzes/curl_pattern_quiz/curl_pattern_quiz.dart';
import 'package:myhairregimen/screens/quizzes/hair_density_quiz/hair_density_quiz.dart';
import 'package:myhairregimen/screens/quizzes/hair_porosity_quiz/hair_porosity_quiz.dart';
import 'package:myhairregimen/screens/quizzes/hair_structure_quiz/hair_structure_quiz.dart';

class QuizButton extends StatelessWidget {
  final String title;
  final String navPage;

  QuizButton(
      this.title,
      this.navPage
      );
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 30,
      child: RaisedButton(
        color: AppTheme.themeColor,
        child: Text(title),
          onPressed: () {
            if( navPage == "hair_porosity"){
              Navigator.push(context, new MaterialPageRoute(builder: (context)=> new HairPorosityQuiz()));
            } else if( navPage == "hair_structure") {
              Navigator.push(context, new MaterialPageRoute(builder: (context)=> new HairStructureQuiz()));
            } else if (navPage == "curl_pattern"){
              Navigator.push(context, new MaterialPageRoute(builder: (context)=> new CurlPatternQuiz()));
            } else if (navPage == "hair_density"){
              Navigator.push(context, new MaterialPageRoute(builder: (context)=> new HairDensityQuiz()));
            }
          }
      ),

    );

  }
}
