import 'package:myhairregimen/models/intro_quiz_answers.dart';
import 'package:myhairregimen/models/product_list_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myhairregimen/app_theme.dart';
import 'package:myhairregimen/screens/quizzes/introductory_quiz/curl_pattern_question.dart';
import 'package:myhairregimen/widgets/quiz_app_bar.dart';
import 'package:myhairregimen/widgets/quiz_button.dart';

import 'hair_length_question.dart';


DateTime now = DateTime.now();
String formattedDate = DateFormat('MMMMd').format(now);

class HairStructureQuestion extends StatefulWidget {
  const HairStructureQuestion({Key key, this.animationController}) : super(key: key);
  final AnimationController animationController;
  @override
  _HairStructureQuestionState createState() => _HairStructureQuestionState();
}

class _HairStructureQuestionState extends State<HairStructureQuestion>
    with TickerProviderStateMixin {
  Animation<double> topBarAnimation;
  AnimationController animationController;
  List notes = List();
  String input = "";
  List<ProductListData> productList = ProductListData.productList;
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: QuizAppBar(),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "What is your hair porosity ?",
                style: TextStyle(
                    fontSize: 24, color: AppTheme.themeColor, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              spacing: 5.0,
              runSpacing: 5.0,
              children: <Widget>[
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap:(){
                      IntroQuizAnswers _quiz = new IntroQuizAnswers();
                      _quiz.hairStructure = "fine";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> CurlPatternQuestion()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("Fine Structured Hair"),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap:(){
                      IntroQuizAnswers _quiz = new IntroQuizAnswers();
                      _quiz.hairStructure = "meduim";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> CurlPatternQuestion()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("Medium Structured Hair"),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap:(){
                      IntroQuizAnswers _quiz = new IntroQuizAnswers();
                      _quiz.hairStructure= "course";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> CurlPatternQuestion()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("Course Structured Hair"),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(" Not sure ?"),
            QuizButton("Take Hair Structure Quiz", "hair_porosity" )
          ],
        )
    );
  }
}



