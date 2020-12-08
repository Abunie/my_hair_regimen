import 'package:myhairregimen/widgets/card_info.dart';
import 'package:flutter/material.dart';
import '../app_theme.dart';
Widget QuizCard(
    {Color primary = Colors.white,
      String imgPath,
      String chipText1 = '',
      String chipText2 = '',
      Color chipColor = AppTheme.themeColor,
      double width,
      String navPage = ''}) {
  return Container(
      height:180,
      width:width * .32,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
          color: primary.withAlpha(200),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 10,
                color: AppTheme.themeColor.withAlpha(20))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Container(
          child: Stack(
            children: <Widget>[
              Image.asset(imgPath,
                  fit: BoxFit.contain),
              Positioned(
                bottom: 10,
                left: 10,
                child: CardInfo(chipText1, chipText2,
                    AppTheme.nearlyWhite, chipColor,width,navPage),
              )
            ],
          ),
        ),
      )
  );
}