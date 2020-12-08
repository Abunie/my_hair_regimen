import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const Color themeColor = Color(0xFF5565DE);
  static const Color lightTheme = Color(0xFFDFE1F0);
  static const Color nearlyWhite = Color(0xFFFAFAFA);
  static const Color white = Color(0xFFFFFFFF);
  static const Color background = Color(0xFFF2F3F8);
  static const Color nearlyDarkBlue = Color(0xFF2633C5);

  static const Color nearlyBlue = Color(0xFF00B6F0);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);


  static const Color dark_Ginger = Color(0xFFFA7D82);
  static const Color light_Ginger = Color(0xFFFFB295);

  static const Color light_BluePurple = Color(0xFF738AE6);
  static const Color dark_BluePurple = Color(0xFF5C5EDD);

  static const Color light_Pink = Color(0xFFFE95B6);
  static const Color dark_Pink = Color(0xFFFF5287);

  static const Color light_Purple = Color(0xFF6F72CA);
  static const Color Purple = Color(0xFF1E1466);
  static const Color dark_Purple = Color(0xFF170638);

  static const Color light_Navy = Color(0xFF004D99);
  static const Color dark_Navy = Color(0xFF00264D);

  static const Color light_Grey = Color(0xFFD6DBDF);
  static const Color dark_Grey = Color(0xFF34495E);

  static const Color light_Yellow = Color(0xFFFFD966);
  static const Color dark_Yellow = Color(0xFFFFC61A);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color spacer = Color(0xFFF2F2F2);
  static const String fontName = 'Roboto';

  static const Color googleBackground = Color(0xFFEFEFEF);
  static const Color anonBackground = Color(0xFF100534);

  static const TextTheme textTheme = TextTheme(
    display1: display1,
    headline: headline,
    title: title,
    subtitle: subtitle,
    body2: body2,
    body1: body1,
    caption: caption,
  );

  static const TextStyle display1 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: darkerText,
  );

  static const TextStyle headline = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: darkerText,
  );

  static const TextStyle title = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: darkerText,
  );

  static const TextStyle subtitle = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: darkText,
  );

  static const TextStyle body2 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: darkText,
  );

  static const TextStyle body1 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: lightText, // was lightText
  );

  static ThemeData buildLightTheme() {
    final Color primaryColor = Color(0xFFFAFAFA);
    final Color secondaryColor = Color(0xFFF2F3F8);
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      buttonColor: primaryColor,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      accentColor: secondaryColor,
      canvasColor: Colors.white,
      primaryColorDark: Colors.black,
      backgroundColor: const Color(0xFFF2F3F8),
      scaffoldBackgroundColor: const Color(0xFFF6F6F6),
      errorColor: const Color(0xFFB00FF),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),

    );
  }
}

