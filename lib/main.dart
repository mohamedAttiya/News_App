import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/projects/news_app/layout/news_app_screens/news_splash_screen.dart';
import 'package:shop_app/projects/news_app/news_network/news_remote_network/dio_helper.dart';
import 'package:shop_app/projects/news_app/styles/news_theme.dart';
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
      home:const SplashScreen(),
    );
  }
}