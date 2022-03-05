import 'package:flutter/material.dart';

import '../utils/style.dart';
import 'colors.dart';


ThemeData getThemeData() {
  return ThemeData(
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    splashColor: Colors.transparent,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(0,0)),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
        foregroundColor: null,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
        elevation: MaterialStateProperty.resolveWith(getElevation),
        backgroundColor: MaterialStateProperty.resolveWith(getColor),
      ),
    ),
    colorScheme: ColorScheme(
      background: lightColor,
      onBackground: darkColor,
      brightness: Brightness.light,
      error: redColor,
      onError: Colors.white,
      primary: purpleColor,
      onPrimary: Colors.white,
      secondary: lightBlueColor,
      onSecondary: darkBlueColor,
      surface: Colors.white,
      onSurface: Color(0xff777b89),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 40, overflow: TextOverflow.ellipsis, fontWeight: FontWeight.w300, color: darkColor),
      bodyText1: TextStyle(fontSize: 19, overflow: TextOverflow.fade, fontWeight: FontWeight.w300, color: darkColor),
      bodyText2: TextStyle(fontSize: 17, overflow: TextOverflow.fade, fontWeight: FontWeight.w400, color: darkColor),
      subtitle1: TextStyle(fontSize: 16, overflow: TextOverflow.fade, fontWeight: FontWeight.w400, color: greyColor),
      subtitle2: TextStyle(fontSize: 14, overflow: TextOverflow.fade, fontWeight: FontWeight.w500, color: greyColor),
      button: TextStyle(fontSize: 18, overflow: TextOverflow.ellipsis, fontWeight: FontWeight.w500, color: Colors.white),
    ),
    iconTheme: const IconThemeData(
      color: darkColor,
      size: 30,
    ),
  );
}
