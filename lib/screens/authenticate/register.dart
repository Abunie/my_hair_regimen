import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myhairregimen/screens/authenticate/signin_options.dart';
import 'package:myhairregimen/widgets/loginContainer.dart';

import '../../app_theme.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  FirebaseAuth auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _verifyPass = TextEditingController();


  String username = '';
  String email = '';
  String password = '';
  String verifyPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: Container(
        child: Stack(
            children: <Widget>[
        Positioned(
        top: -MediaQuery.of(context).size.height * .15,
        right: -MediaQuery.of(context).size.width * .4,
        child: LoginContainer(),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0),
        child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                SizedBox( height: 100.0),
                Text("Sign Up", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                SizedBox( height: 20.0),
                TextFormField(
                    decoration: new InputDecoration(labelText: 'Email*', border: new OutlineInputBorder(borderRadius: const BorderRadius.all(
                      const Radius.circular(50.0),
                    ))),
                    keyboardType: TextInputType.emailAddress,
                    validator: validateEmail,
                    onChanged: (val){
                      setState(() => email = val);
                    }
                ),
                SizedBox( height: 20.0),
                TextFormField(
                    decoration: new InputDecoration(labelText: 'Password*', border: new OutlineInputBorder(borderRadius: const BorderRadius.all(
                      const Radius.circular(50.0),
                    ))),
                    keyboardType: TextInputType.text,
                    controller: _pass,
                    validator: (val) => val.length < 8  ? 'Your password has to be at least 8 characters long ' : null,
                    obscureText: true,
                    onChanged: (val){
                      setState(() => password = val);
                    }
                ),
                SizedBox( height: 20.0),
                TextFormField(
                    decoration: new InputDecoration(labelText: ' Verify Password*', border: new OutlineInputBorder(borderRadius: const BorderRadius.all(
                      const Radius.circular(50.0),
                    ))),
                    keyboardType: TextInputType.text,
                    controller: _verifyPass,
                    validator: (val){
                      if(val.isEmpty)
                        return 'Empty';
                      if(val != _pass.text)
                        return 'Not Match';
                      return null;
                    },
                    obscureText: true,
                    onChanged: (val){
                      setState(() => verifyPassword = val);
                    }
                ),

                SizedBox( height: 20.0),
                ButtonTheme(
                  height: 50,
                  child: RaisedButton(
                    color: AppTheme.themeColor,
                    child: Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 20),),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        print(email);
                        print(password);
                        print(username);
                        print(verifyPassword);
                        auth.createUserWithEmailAndPassword( email: email, password: password);
                        Navigator.push( context, MaterialPageRoute(builder: (context) => SignInOptions()),);
                      }
                    },
                  ),
                ),
                _loginAccountLabel(),
              ],
            )
        ),
      )
    ]
        ),
      ),

    );
  }
  Widget _loginAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Register()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Already have an account ?',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Sign In',
              style: TextStyle(
                  color: AppTheme.themeColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}

//Validate Email Function
String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Enter Valid Email';
  else
    return null;
}

