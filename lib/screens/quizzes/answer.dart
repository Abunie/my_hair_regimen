import 'package:myhairregimen/widgets/option_card.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerText;
  final String ansImage;
  final Function selectHandler;

  Answer(this._answerText, this.selectHandler, this.ansImage);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: selectHandler,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          padding: EdgeInsets.all(20.0),
          height: 100,
          width: 100,
          //child: Text(_answerText),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      ansImage
                  ),
                  fit: BoxFit.cover
              )
          ),
        ),
      ),
    );
  }
}