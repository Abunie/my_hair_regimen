import 'dart:math';

import 'package:flutter/material.dart';

import '../app_theme.dart';
import 'customClipper.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Transform.rotate(
          angle: -pi / 3.5,
          child: ClipPath(
            clipper: ClipPainter(),
            child: Container(
              height: MediaQuery.of(context).size.height *.45,
              width: MediaQuery.of(context).size.width,
              color: AppTheme.themeColor,
            ),
          ),
        )
    );
  }
}