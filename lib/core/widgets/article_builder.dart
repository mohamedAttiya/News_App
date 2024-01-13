import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:news_application/core/widgets/build_article_item.dart';
import 'package:news_application/core/widgets/build_divider.dart';
Widget articleBuilder(list,{isSearch = false})=>ConditionalBuilder(
  condition:list.length > 0 ,
  builder:(context)=>ListView.separated(
      physics:const BouncingScrollPhysics(),
      itemBuilder:(context,index)=>buildArticleItem(list[index]),
      separatorBuilder:(context,index)=>myDivider(),
      itemCount: 10), fallback:(context)=>isSearch ? Container() :const Center(child:Center(child: CircularProgressIndicator())),);