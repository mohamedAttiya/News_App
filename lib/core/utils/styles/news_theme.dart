// ignore_for_file: prefer_const_constructors, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Themes{
  static ThemeData customDarkTheme = ThemeData.dark().copyWith
    (
      progressIndicatorTheme: ProgressIndicatorThemeData(color:Colors.deepOrange),
      backgroundColor: Color(0xff333739),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xff333739),
        elevation:0.0,
        type:BottomNavigationBarType.fixed,
        selectedItemColor:Colors.deepOrange,
        unselectedItemColor:Colors.grey,
      ),
      primaryColor:Colors.deepOrange,
      scaffoldBackgroundColor: Color(0xff333739),
      appBarTheme: AppBarTheme(
        systemOverlayStyle:SystemUiOverlayStyle(
          statusBarColor:Color(0xff333739),
          statusBarIconBrightness:Brightness.light,
        ),
        backgroundColor:Color(0xff333739),
        elevation:0.0,
        titleTextStyle:TextStyle(
          color:Colors.white,
          fontSize:20.0,
          fontWeight:FontWeight.bold,
        ),
        iconTheme:IconThemeData(
          color:Colors.white,
        ),
      ),
      textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize:18.0,
            fontWeight:FontWeight.w600,
            color:Colors.white,
          )
      )
  );
  static ThemeData customLightTheme = ThemeData.light().copyWith
    (
    progressIndicatorTheme: ProgressIndicatorThemeData(color:Colors.blue),
    primaryColor:Colors.deepOrange,
    scaffoldBackgroundColor:Colors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor:Colors.white,
      elevation:0.0,
      type:BottomNavigationBarType.fixed,
      selectedItemColor:Colors.deepOrange,
    ),
    appBarTheme: AppBarTheme(
      iconTheme:IconThemeData(
        color:Colors.black,
      ),
      titleTextStyle:TextStyle(
        color:Colors.black,
        fontSize:20.0,
        fontWeight:FontWeight.bold,
      ),
      systemOverlayStyle:SystemUiOverlayStyle(
          statusBarColor:Colors.white,
          statusBarIconBrightness:Brightness.dark
      ),
      backgroundColor:Colors.white,
      elevation: 0.0,
    ),
    textTheme: TextTheme(
        bodyText1: TextStyle(
          fontSize:18.0,
          fontWeight:FontWeight.w600,
          color:Colors.black,
        )
    ),
  );
}