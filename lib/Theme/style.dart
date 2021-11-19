import 'package:flutter/material.dart';
import 'colors.dart';

//app theme
final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: kWhiteColor, fontFamily: 'ProductSans',
  backgroundColor: Colors.black,
  primaryColor: kMainColor,
  bottomAppBarColor: kWhiteColor,
  dividerColor: Color(0xffacacac),
  disabledColor: kDisabledColor,
  buttonColor: kMainColor,
  cursorColor: kMainColor,
  indicatorColor: kMainColor,
  accentColor: kMainColor,
  cardColor: Color(0xff1F3C27),
  bottomAppBarTheme: BottomAppBarTheme(color: kMainColor),
  appBarTheme: AppBarTheme(
    color: kTransparentColor,
    elevation: 0.0,
  ),
  //text theme which contains all text styles
  textTheme: TextTheme(
    //default text style of Text Widget
    bodyText1: TextStyle(color: kWhiteColor, fontSize: 18),
    bodyText2: TextStyle(),
    subtitle1: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
    subtitle2: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w400),
    headline3: TextStyle(fontSize: 20),
    headline5: TextStyle(fontWeight: FontWeight.bold),
    headline6: TextStyle(color: kLightTextColor),
    caption: TextStyle(),
    overline: TextStyle(),
    button: TextStyle(
        fontSize: 18, color: kWhiteColor, fontWeight: FontWeight.w500),
  ),
);

/// NAME         SIZE  WEIGHT  SPACING
/// headline1    96.0  light   -1.5
/// headline2    60.0  light   -0.5
/// headline3    48.0  regular  0.0
/// headline4    34.0  regular  0.25
/// headline5    24.0  regular  0.0
/// headline6    20.0  medium   0.15
/// subtitle1    16.0  regular  0.15
/// subtitle2    14.0  medium   0.1
/// body1        16.0  regular  0.5   (bodyText1)
/// body2        14.0  regular  0.25  (bodyText2)
/// button       14.0  medium   1.25
/// caption      12.0  regular  0.4
/// overline     10.0  regular  1.5
