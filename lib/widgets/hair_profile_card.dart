import 'package:flutter/material.dart';

class HairProfileCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String iconPath;
  final Color gradientBegin;
  final Color gradientEnd;

  HairProfileCard({
    this.title,
    this.subtitle,
    this.iconPath,
    this.gradientBegin,
    this.gradientEnd,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,

      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        padding: EdgeInsets.all(20.0),
        height: 100,
        width: 50,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: <Color>[
                gradientBegin,
                gradientEnd
              ]
          ),
          image: DecorationImage(
            image: AssetImage(
                iconPath),
          ),
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}