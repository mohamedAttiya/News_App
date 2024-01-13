// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_application/core/network/news_remote_network/dio_helper.dart';
import 'package:news_application/core/utils/styles/news_theme.dart';
import 'package:news_application/features/splash/presentation/views/splash_screen.dart';
main(){
  DioHelper.init();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner:false,
      theme:Themes.customLightTheme,
      home:SplashScreen(),
    );
  }
}