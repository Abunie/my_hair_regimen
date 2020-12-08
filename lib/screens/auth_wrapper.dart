import 'package:firebase_auth/firebase_auth.dart';
import 'package:myhairregimen/screens/authenticate/authenticate.dart';
import 'package:myhairregimen/screens/base/base.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myhairregimen/models/user.dart';

class AuthWrapper extends StatelessWidget{
  Widget build(BuildContext context){

    //final user = Provider.of<LoginUser>(context);
    final User user = FirebaseAuth.instance.currentUser;
    if (user == null){
      return Authenticate();
    }else{
      return Base();
    }
    // return either Home or Authenticate Widget


  }

}
