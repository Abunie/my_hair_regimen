import 'package:myhairregimen/widgets/quiz_card.dart';
import 'package:flutter/material.dart';
import '../app_theme.dart';
Widget QuizCarousel(
    {double width}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          QuizCard(
              primary: AppTheme.light_BluePurple,
              chipColor: AppTheme.light_BluePurple,
              chipText1: "Hair Porosity Quiz",
              chipText2: "Take Quiz",
              imgPath:
              "assets/media/quiz/hair_porosity.png",
              width: width,
              navPage: "hair_porosity"),
          QuizCard(
              primary: Colors.white,
              chipColor: AppTheme.light_Purple,
              chipText1: "Curl Pattern Quiz",
              chipText2: "Take Quiz",
              imgPath:
              "assets/media/quiz/curl_pattern.png",
              width: width,
              navPage: "curl_pattern"),
          QuizCard(
              primary: Colors.white,
              chipColor: AppTheme.light_Ginger,
              chipText1: "Hair Density Quiz",
              chipText2: "Take Quiz",
              imgPath:
              "assets/media/quiz/hair_density.png",
              width: width,
              navPage: "hair_density"),
          QuizCard(
              primary: Colors.white,
              chipColor: AppTheme.dark_BluePurple,
              chipText1: "Hair Texture Quiz",
              chipText2: "Take Quiz",
              imgPath:
              "assets/media/quiz/hair_texture.png",
              width: width,
              navPage: "hair_structure"),
        ],
      ),
    ),
  );
}