import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myhairregimen/models/product_notifier.dart';
import 'package:myhairregimen/screens/authenticate/authenticate.dart';
import 'package:myhairregimen/screens/authenticate/get_started.dart';
import 'package:myhairregimen/screens/base/base.dart';
import 'package:myhairregimen/screens/calendar/calendar.dart';
import 'package:myhairregimen/screens/calendar/calendar_page.dart';
import 'package:myhairregimen/screens/calendar/calendar_view.dart';
import 'package:myhairregimen/screens/notes/notes_screen.dart';
import 'package:myhairregimen/screens/products/products_screen.dart';
import 'package:myhairregimen/screens/profile/profile.dart';
import 'package:myhairregimen/screens/routines/details.dart';
import 'package:myhairregimen/screens/wrapper.dart';
//import 'package:myhairregimen/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
//import 'package:myhairregimen/models/user.dart';


//void main() => runApp(MyApp());

//Future<void> main() async {
//
//  WidgetsFlutterBinding.ensureInitialized();
//  await Firebase.initializeApp();
//  //Firebase.initializeApp();
//  runApp(MyApp());
//
//}

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  // Obtain a list of the available cameras on the device.
//  final cameras = await availableCameras();
//// Get a specific camera from the list of available cameras.
//  final firstCamera = cameras.first;
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder:(context) => ProductNotifier(),
        ),
      ],
      child: MyApp()
  )));
}

class MyApp extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  //final Future<FirebaseApp> _initialization = Firebase.ensureInitialized();
  final User user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      // Initialize FlutterFire:

      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return StreamProvider<User>.value(
            value: Stream.value(user),
            child: MaterialApp(
              theme: ThemeData(fontFamily: 'Roboto'),
              debugShowCheckedModeBanner: false,
              home: Scaffold( body: Text("an Error Occured")),
            ),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return StreamProvider<User>.value(
            value: Stream.value(user),
            child: MaterialApp(
              theme: ThemeData(fontFamily: 'Roboto'),
              debugShowCheckedModeBanner: false,
              home: MyCalendar(),
            ),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return MaterialApp(
          theme: ThemeData(fontFamily: 'Roboto'),
          debugShowCheckedModeBanner: false,
          home: Scaffold( body: Text("Loading....."),),
        );
      },
    );
  }
}

//class MyApp extends StatelessWidget {
//  final User user = FirebaseAuth.instance.currentUser;
//  // This widget is the root of your application
//  Widget build(BuildContext context) {
//    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//      statusBarColor: Colors.transparent,
//      statusBarIconBrightness: Brightness.dark,
//      statusBarBrightness: Platform.isAndroid ? Brightness.dark : Brightness.light,
//      systemNavigationBarColor: Colors.white,
//      systemNavigationBarDividerColor: Colors.grey,
//      systemNavigationBarIconBrightness: Brightness.dark,
//    ));
//    return StreamProvider<User>.value(
//      value: Stream.value(user),
//      child: MaterialApp(
//        theme: ThemeData(fontFamily: 'Roboto'),
//        debugShowCheckedModeBanner: false,
//        //home: Wrapper(),
//        home: Base(),
//      ),
//    );
//  }
//}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}



//import 'dart:io';
//import 'package:myhairregimen/screens/notes/notes_screen.dart';
//import 'package:myhairregimen/screens/calendar/calendar.dart';
//import 'package:myhairregimen/screens/base/base.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//
//
//void main() async {
//  WidgetsFlutterBinding.ensureInitialized();
//  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
//      .then((_) => runApp(MyApp()));
//}
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//      statusBarColor: Colors.transparent,
//      statusBarIconBrightness: Brightness.dark,
//      statusBarBrightness: Platform.isAndroid ? Brightness.dark : Brightness.light,
//      systemNavigationBarColor: Colors.white,
//      systemNavigationBarDividerColor: Colors.grey,
//      systemNavigationBarIconBrightness: Brightness.dark,
//    ));
//    return MaterialApp(
//      title: 'Flutter UI',
//      debugShowCheckedModeBanner: false,
////      theme: ThemeData(
////        primarySwatch: Colors.blue,
////        textTheme: R,
////        platform: TargetPlatform.iOS,
////      ),
//      home: MyCalendar(),
//    );
//  }
//}
//
//class HexColor extends Color {
//  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
//
//  static int _getColorFromHex(String hexColor) {
//    hexColor = hexColor.toUpperCase().replaceAll('#', '');
//    if (hexColor.length == 6) {
//      hexColor = 'FF' + hexColor;
//    }
//    return int.parse(hexColor, radix: 16);
//  }
//}
