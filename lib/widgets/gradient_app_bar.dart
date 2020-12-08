import 'package:flutter/material.dart';
class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double _preferredHeight = 100.0;
  String title;
  Color gradientBegin, gradientEnd;
  GradientAppBar(this.title, this.gradientBegin, this.gradientEnd):
        assert(title != null),
        assert(gradientBegin != null),
        assert(gradientEnd != null);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: _preferredHeight,
      alignment: Alignment.center,
      padding: EdgeInsets.only(top:20.0),
      decoration: new BoxDecoration(
        gradient: LinearGradient(
            colors: <Color>[
              gradientBegin,
              gradientEnd
            ]
        ),
        boxShadow: [
          new BoxShadow(blurRadius: 20.0)
        ],
        borderRadius: new BorderRadius.vertical(
            bottom: new Radius.elliptical(
                MediaQuery.of(context).size.width, 50.0)),
      ) ,
      child: Text(
        title,
        style: TextStyle(
            color: Colors.black45,
            letterSpacing: 5.0,
            fontSize: 25.0,
            fontWeight: FontWeight.w600
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(_preferredHeight);
}

