import 'package:myhairregimen/models/intro_quiz_answers.dart';
import 'package:myhairregimen/models/product_list_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myhairregimen/app_theme.dart';
import 'package:myhairregimen/widgets/quiz_app_bar.dart';
import 'package:myhairregimen/widgets/quiz_button.dart';

import 'hair_structure_question.dart';


DateTime now = DateTime.now();
String formattedDate = DateFormat('MMMMd').format(now);

class HairDensityQuestion extends StatefulWidget {
  const HairDensityQuestion({Key key, this.animationController}) : super(key: key);
  final AnimationController animationController;
  @override
  _HairDensityQuestionState createState() => _HairDensityQuestionState();
}

class _HairDensityQuestionState extends State<HairDensityQuestion>
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
                "What is your hair density ?",
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
                      _quiz.hairDensity = "low";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> HairStructureQuestion()));

                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("Low Density"),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap:(){
                      IntroQuizAnswers _quiz = new IntroQuizAnswers();
                      _quiz.hairDensity = "medium";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> HairStructureQuestion()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("Medium Density"),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap:(){
                      IntroQuizAnswers _quiz = new IntroQuizAnswers();
                      _quiz.hairDensity = "high";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> HairStructureQuestion()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("High Density"),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(flex: 1,),
            Text(" Not sure ?"),
            QuizButton("Take Hair Density Quiz", "hair_density" )
          ],
        )
    );
  }
}



