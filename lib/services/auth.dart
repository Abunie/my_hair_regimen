import 'dart:developer';
import 'package:myhairregimen/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

  //FirebaseAuth auth = FirebaseAuth.instance;
//  FirebaseAuth.instance.authStateChanges()
//      .listen((User user) {
//  if (user == null) {
//  print('User is currently signed out!');
//  } else {
//  print('User is signed in!');
//  }
//  });

  final FirebaseAuth _auth = FirebaseAuth.instance;
  //create user object based on FirebaseUser
//  User _userFromFirebaseUser(User user){
//    return user != null ? User : null;
//  }

  // auth change user stream
//  Stream<User> get user{
//    return _auth.onAuthStateChanged
//        .map(_userFromFirebaseUser);
////        .map((FirebaseUser user) => _userFromFirebaseUser(user));
//
//
//
//  }

  //sign in Anon
  Future signInAnon() async{
    try{
//      AuthResult result =
      await _auth.signInAnonymously();
//      FirebaseUser user = result.user;
      return null;
      //return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign in with email and password

  //register with email and password
  Future register( String username, String email, String password ) async {
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      //FirebaseUser user = result.user;
      return null;
      //return _userFromFirebaseUser(user);
    }catch(e){

    }
  }

  //sign out
  Future signOut() async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }

}