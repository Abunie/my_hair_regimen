import 'package:firebase_auth/firebase_auth.dart';
import 'package:myhairregimen/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //final AuthService _auth = AuthService();
  final auth = FirebaseAuth.instance;
  //text field state
  String email = '';
  String password = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[500],
        elevation: 0.0,
        title: Text('Sign In '),
      ),

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0 , horizontal: 50.0),
        child: Form(
            child: Column(
              children: <Widget>[
                Image.asset('assets/media/logo.png',
                    width: 200.0,
                    height: 200.0),
                SizedBox( height: 20.0),
                TextFormField(
                    onChanged: (val){
                      setState(() => email = val);
                    }
                ),
                SizedBox( height: 20.0),
                TextFormField(
                    obscureText: true,
                    onChanged: (val){
                      setState(() => password = val);
                    }
                ),
                SizedBox( height: 20.0),
                RaisedButton(
                  color: Colors.deepPurple[500],
                  child: Text('Sign in', style: TextStyle(color: Colors.white)),
                  onPressed: () async{
                    print(email);
                    print(password);

                  },

                )
              ],
            )
        ),
      ),
    );
  }
}
