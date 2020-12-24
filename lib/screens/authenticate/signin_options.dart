import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myhairregimen/screens/auth_wrapper.dart';
import 'package:myhairregimen/screens/authenticate/register.dart';
import 'package:flutter/material.dart';
import 'package:myhairregimen/app_theme.dart';
import 'package:myhairregimen/widgets/loginContainer.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';



class SignInOptions extends StatefulWidget {
  @override
  _SignInOptionsState createState() => _SignInOptionsState();
}

class _SignInOptionsState extends State<SignInOptions> {
  //final AuthService _auth = AuthService();
  //text field state
  String username = '';
  String email = '';
  String password = '';
  String verifyPassword = '';
  //FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppTheme.background,

      body: Container(
        height: height,
        child: Stack(
            children: <Widget>[
        Positioned(
        top: -MediaQuery.of(context).size.height * .15,
        right: -MediaQuery.of(context).size.width * .4,
        child: LoginContainer(),
      ),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: ListView(

            children: <Widget>[
              SizedBox( height: 100.0),
              Text("Sign In", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox( height: 20.0),
              TextFormField(
                  decoration: new InputDecoration(labelText: 'Username*', border: new OutlineInputBorder(borderRadius: const BorderRadius.all(
                    const Radius.circular(40.0),
                  ))),
                  keyboardType: TextInputType.text,
                  onChanged: (val){
                    setState(() => username = val);
                  }
              ),
              SizedBox( height: 20.0),
              TextFormField(
                  decoration: new InputDecoration(labelText: 'Email*', border: new OutlineInputBorder(borderRadius: const BorderRadius.all(
                    const Radius.circular(40.0),
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
                    const Radius.circular(40.0),
                  ))),
                  keyboardType: TextInputType.text,
                  validator: (val) => val.length < 8  ? 'Your password has to be at least 8 characters long ' : null,
                  obscureText: true,
                  onChanged: (val){
                    setState(() => password = val);
                  }
              ),
              SizedBox( height: 20.0),
          Container(
            height: 50,
              child:SignInButtonBuilder(
                text: 'Sign in with Email',
                icon: Icons.email,
                  onPressed: () async {
                    try {
                      //FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
                      //FirebaseAuth.instance.currentUser.updateProfile(displayName:username);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AuthWrapper()),);
                    } catch (e) {
                      print(e);
                      username = "";
                      password = "";
                      verifyPassword = "";
                      email = "";
                      // TODO: alertdialog with error
                    }
                  },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                backgroundColor: AppTheme.themeColor,
              ),
             ),
              SizedBox( height: 5.0),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                child: Text('Forgot Password ?',
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500)),
              ),
              SizedBox( height: 5.0),
              _divider(),
            Container(
              height:  50,
              child:SignInButton(
                Buttons.FacebookNew,
                text: "Continue with Facebook",
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                onPressed: () {},
              )
            ),
              SizedBox( height: 20.0),
            Container(
              height: 50,
              child:SignInButton(
                Buttons.Google,
                text: "Continue with Google",
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                onPressed: () {},
              ),
            ),

              _loginAccountLabel()
            ],
          ),
      ),

    ])
    )
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
          ),

          Text('or', style: TextStyle(fontSize: 20),),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
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
              'Don\'t have an account ?',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Sign Up',
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



