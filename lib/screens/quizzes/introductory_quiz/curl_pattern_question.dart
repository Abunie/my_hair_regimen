import 'package:myhairregimen/models/intro_quiz_answers.dart';
import 'package:myhairregimen/models/product_list_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myhairregimen/app_theme.dart';
import 'package:myhairregimen/screens/quizzes/introductory_quiz/hair_length_question.dart';
import 'package:myhairregimen/widgets/quiz_app_bar.dart';
import 'package:myhairregimen/widgets/quiz_button.dart';


DateTime now = DateTime.now();
String formattedDate = DateFormat('MMMMd').format(now);

class CurlPatternQuestion extends StatefulWidget {
  const CurlPatternQuestion({Key key, this.animationController}) : super(key: key);
  final AnimationController animationController;
  @override
  _CurlPatternQuestionState createState() => _CurlPatternQuestionState();
}

class _CurlPatternQuestionState extends State<CurlPatternQuestion>
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
                "What is your curl pattern ?",
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
                      _quiz.curlPattern = "3a";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> HairLengthQuestion()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("3A"),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap:(){
                      IntroQuizAnswers _quiz = new IntroQuizAnswers();
                      _quiz.curlPattern = "3b";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> HairLengthQuestion()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("3B"),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap:(){
                      IntroQuizAnswers _quiz = new IntroQuizAnswers();
                      _quiz.curlPattern = "3c";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> HairLengthQuestion()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("3C"),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap:(){
                      IntroQuizAnswers _quiz = new IntroQuizAnswers();
                      _quiz.curlPattern = "4a";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> HairLengthQuestion()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("4A"),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap:(){
                      IntroQuizAnswers _quiz = new IntroQuizAnswers();
                      _quiz.curlPattern = "4b";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> HairLengthQuestion()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("4B"),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap:(){
                      IntroQuizAnswers _quiz = new IntroQuizAnswers();
                      _quiz.curlPattern = "4c";
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> HairLengthQuestion()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      child: Text("4C"),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(flex: 1,),
            Text(" Not sure ?"),
            QuizButton("Take Curl Pattern Quiz", "curl_pattern" )
          ],
        )
    );
  }
}



