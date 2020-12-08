import 'package:flutter/material.dart';
class OptionCard extends StatelessWidget {
  final String option;

  OptionCard(
      this.option,
      );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            padding: EdgeInsets.all(20.0),
            height: 100,
            width: 100,
            child: Text(option),
          ),
        ),
      ),
    );
  }
}
