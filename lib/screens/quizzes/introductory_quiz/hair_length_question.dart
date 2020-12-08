import 'package:myhairregimen/models/intro_quiz_answers.dart';
import 'package:myhairregimen/models/product_list_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myhairregimen/app_theme.dart';
import 'package:myhairregimen/screens/quizzes/introductory_quiz/results.dart';
import 'package:myhairregimen/widgets/quiz_app_bar.dart';
import 'package:myhairregimen/widgets/quiz_button.dart';


DateTime now = DateTime.now();
String formattedDate = DateFormat('MMMMd').format(now);

class HairLengthQuestion extends StatefulWidget {
  const HairLengthQuestion({Key key, this.animationController}) : super(key: key);
  final AnimationController animationController;
  @override
  _HairLengthQuestionState createState() => _HairLengthQuestionState();
}

class _HairLengthQuestionState extends State<HairLengthQuestion>
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
                "How long is your hair ?",
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
                      _quiz.hairLength = "above_shoulder_length";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> Results()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("Above Shoulder Length"),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap:(){
                      IntroQuizAnswers _quiz = new IntroQuizAnswers();
                      _quiz.hairLength = "shoulder_length";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> Results()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("Shoulder Length"),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap:(){
                      IntroQuizAnswers _quiz = new IntroQuizAnswers();
                      _quiz.hairLength = "armpit_length";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> Results()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("Armpit Length"),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap:(){
                      IntroQuizAnswers _quiz = new IntroQuizAnswers();
                      _quiz.hairLength = "bra-strap_length";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> Results()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("Bra-Strap Length"),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap:(){
                      IntroQuizAnswers _quiz = new IntroQuizAnswers();
                      _quiz.hairLength = "mid-back_length";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> Results()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("Mid-back Length"),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap:(){
                      IntroQuizAnswers _quiz = new IntroQuizAnswers();
                      _quiz.hairLength = "waist_length_and_beyond";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> Results()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("Waist Length and Beyond"),
                    ),
                  ),
                ),
              ],
            ),

          ],
        )
    );
  }
}



