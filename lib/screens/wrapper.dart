import 'package:myhairregimen/screens/authenticate/get_started.dart';
import 'package:myhairregimen/screens/base/base.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myhairregimen/models/user.dart';

class Wrapper extends StatelessWidget{
  Widget build(BuildContext context){
    //final user = Provider.of<LoginUser>(context);
    final user = null;
    if (user == null){
      return GetStartedPage();
    }else{
      return Base();
    }
    // return either Home or Authenticate Widget
  }
}
