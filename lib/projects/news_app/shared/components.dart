import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/projects/news_app/layout/news_app_screens/web_view_screen.dart';
Widget buildArticleItem(article)=>InkWell(
  onTap:(){
    Get.to(WebViewScreen(url:article['url']));
  },
  child:   Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row
  (
  children:
  [
  Container
  (
  width: 120.0,
  height: 120.0,
  decoration: BoxDecoration
  (
  borderRadius:BorderRadius.circular(10.0),
  image: DecorationImage
  (
  image:NetworkImage('${article['urlToImage']}'),
  fit:BoxFit.cover,
  )
  ),
  ),
  const SizedBox(width:20.0,),
  Expanded(
  child: Container(
  height: 120.0,
  child: Column
  (
  crossAxisAlignment:CrossAxisAlignment.start,
  children:
  [
  Expanded(
  child: Text("${article['title']}",style:TextStyle(fontSize:18.0,fontWeight:FontWeight.w600,color:Colors.black,),
  maxLines:3,
  overflow:TextOverflow.ellipsis,
  ),
  ),
  SizedBox(height: 5.0,),
  Text("${article['publishedAt']}",style:TextStyle(color:Colors.grey),)
  ],
  ),
  ),
  )
  ],
  ),
  ),
);
Widget myDivider()=>Padding(
  padding: const EdgeInsetsDirectional.only(start:20.0),
  child: Container
    ( width: double.infinity,
    height: 1.0,
    color:Colors.grey[300],
  ),
);
Widget articleBuilder(list,{isSearch = false})=>ConditionalBuilder(
  condition:list.length > 0 ,
  builder:(context)=>ListView.separated(
      physics:const BouncingScrollPhysics(),
      itemBuilder:(context,index)=>buildArticleItem(list[index]),
      separatorBuilder:(context,index)=>myDivider(),
      itemCount: 10
  ),
  fallback:(context)=>isSearch ? Container() :const Center(child:Center(child: CircularProgressIndicator())),
);