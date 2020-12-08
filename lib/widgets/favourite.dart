import 'package:flutter/material.dart';
class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return IconButton( iconSize: 30.0,
        padding: EdgeInsets.only(left:4,right:4,top:0),
        icon:  pressed ==true ? Icon(Icons.favorite):Icon(Icons.favorite_border),
        onPressed: () {setState(() { pressed = !pressed; });});
  }
}
