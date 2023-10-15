import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/projects/news_app/layout/news_app_screens/home_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:3),()=>Get.off(HomeScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
         appBar:AppBar(),
         body:Column
           (
             children:
             [
               Padding(
                 padding: const EdgeInsets.only(top:60),
                 child: Image(image:AssetImage("news splash/news.jpg")),
               ),
               Text("Let's Read The News",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,color:Colors.black),)
             ],
           ),
      );
  }
}