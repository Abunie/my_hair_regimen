import 'package:flutter/material.dart';
import 'package:myhairregimen/screens/authenticate/signin_options.dart';

class Authenticate extends StatefulWidget {
  _AuthenticateState createState() => _AuthenticateState();

}
class _AuthenticateState extends State<Authenticate>{
  Widget build(BuildContext context){
    return Container(
      child: SignInOptions(),
    );
  }

}


