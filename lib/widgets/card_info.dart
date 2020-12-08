import 'package:myhairregimen/screens/quizzes/curl_pattern_quiz/curl_pattern_quiz.dart';
import 'package:myhairregimen/screens/quizzes/hair_density_quiz/hair_density_quiz.dart';
import 'package:myhairregimen/screens/quizzes/hair_porosity_quiz/hair_porosity_quiz.dart';
import 'package:myhairregimen/screens/quizzes/hair_structure_quiz/hair_structure_quiz.dart';
import 'package:flutter/material.dart';

import '../app_theme.dart';
class CardInfo extends StatelessWidget {
  final String title;
  final String courses;
  final Color textColor;
  final Color primary;
  final double width;
  final String navPage;

  CardInfo(
      this.title,
      this.courses,
      this.textColor,
      this.primary,
      this.width,
      this.navPage
      );
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10),
            width: width * .32,
            alignment: Alignment.topCenter,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textColor),
            ),
          ),
          SizedBox(height: 5),
          FlatButton(
              color: AppTheme.light_Purple,
              textColor: AppTheme.dark_Purple,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
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
              },
              child: Text(
                "Take Quiz",
                style: TextStyle(fontSize: 15.0),
              ),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              )
          )
        ],
      ),
    );

  }
}

