import 'package:flutter/material.dart';
import 'package:myhairregimen/screens/quizzes/introductory_quiz/hair_density_question.dart';

import '../../../app_theme.dart';

class HairDensityResult extends StatelessWidget {
  final int resultScore;
  final Function restartQuiz;
  HairDensityResult(this.resultScore, this.restartQuiz);

  Map<String, Object> get result {
    String text;
    Color textColor;
    Color background;
    if (resultScore <= 2) {
      text = 'You have Low Density Hair';
      background = Colors.white;
      textColor = Colors.pink;
    } else if (resultScore <= 4) {
      text = 'You have Medium Density Hair ';
      background = Colors.white;
      textColor = Colors.pink;
    } else {
      text = 'You have High Density Hair';
      background = Colors.white;
      textColor = Colors.pink;
    }
    return {'text': text, 'textColor': textColor, 'background': background};
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // alignment: Alignment.center,

        color: result['background'],
        width: double.infinity,
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              result['text'],
              style: TextStyle(
                  fontSize: 36,
                  color: result['textColor'],
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,

            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: RaisedButton(
                child: Text('Go back to Assessment'),
                color: AppTheme.themeColor,
                textColor: Colors.white,
                onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context)=> HairDensityQuestion()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
