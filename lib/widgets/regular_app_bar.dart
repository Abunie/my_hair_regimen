import 'package:flutter/material.dart';

import '../app_theme.dart';
class RegularAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double _preferredHeight = 50.0;
  String title;
  RegularAppBar(this.title):
        assert(title != null);
  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(title, style: TextStyle(fontSize: 18, color: AppTheme.nearlyBlack),), elevation: 1, backgroundColor: AppTheme.background,


      actions: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.favorite, color: AppTheme.themeColor,),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.settings, color: AppTheme.themeColor,),
        ),
      ],
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

