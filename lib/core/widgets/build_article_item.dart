// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_application/features/web_view/presentation/views/web_view_screen.dart';
Widget buildArticleItem(article)=>InkWell(
    onTap:(){
      Get.to(WebViewScreen(url:article['url']));
    }, child:Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(children:
  [
    Container(
      width: 120.0,
      height: 120.0,
      decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(10.0),
          image: DecorationImage(
            image:NetworkImage('${article['urlToImage']}'),
            fit:BoxFit.cover,)),),
    const SizedBox(width:20.0,),
    Expanded(
      child: Container(
        height: 120.0,
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:
          [
            Expanded(
              child: Text("${article['title']}",style:TextStyle(fontSize:18.0,fontWeight:FontWeight.w600,color:Colors.black,),
                maxLines:3,
                overflow:TextOverflow.ellipsis,),),
            SizedBox(height: 5.0,),
            Text("${article['publishedAt']}",style:TextStyle(color:Colors.grey),)],),),)],),));