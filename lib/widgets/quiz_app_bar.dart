import 'package:flutter/material.dart';
import '../app_theme.dart';
class QuizAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double _preferredHeight = 50.0;
  @override
  Widget build(BuildContext context) {
    return AppBar(elevation: 1, backgroundColor: AppTheme.background,


//      actions: [
//        Padding(
//          padding: EdgeInsets.all(8.0),
//          child: Icon(Icons.favorite, color: AppTheme.themeColor,),
//        ),
//        Padding(
//          padding: EdgeInsets.all(8.0),
//          child: Icon(Icons.settings, color: AppTheme.themeColor,),
//        ),
//      ],
      bottom: PreferredSize(
          child: Container(
            color: AppTheme.lightTheme,
            height: 1.0,
          ),
          preferredSize: Size.fromHeight(4.0)),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(_preferredHeight);
}

