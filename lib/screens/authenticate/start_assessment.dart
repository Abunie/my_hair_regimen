import 'package:myhairregimen/screens/quizzes/introductory_quiz/hair_porosity_question.dart';
import 'package:flutter/material.dart';
import 'package:myhairregimen/app_theme.dart';
class StartAssessmentPage extends StatefulWidget {
  @override
  _StartAssessmentPageState createState() => _StartAssessmentPageState();
}

class _StartAssessmentPageState extends State<StartAssessmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0 , horizontal: 50.0),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/media/launcher/background.png'),
                fit: BoxFit.cover)
        ),
        child: ListView(
          children: <Widget>[

            Padding(
              padding: EdgeInsets.only(top:100),
              child:Image.asset('assets/media/launcher/regimen.png'),
            ),
            Padding(
              padding: EdgeInsets.only(top:50),
              child: ButtonTheme(
                height: 50,
                child:RaisedButton(
                  color: AppTheme.nearlyDarkBlue,
                  child: Text('Start My Assessment!', style: TextStyle(color: Colors.white, fontSize: 20,)),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: () async{
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HairPorosityQuestion()),
                    );
                  },
                ) ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
