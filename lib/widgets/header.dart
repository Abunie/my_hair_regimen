import 'package:myhairregimen/app_theme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final EdgeInsets padding;
  Header({this.height, this.width, this.child, this.padding});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding!=null ? padding : EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: AppTheme.background,

      ),

      height: height,
      width: width,
      child: child,
    );
  }
}
