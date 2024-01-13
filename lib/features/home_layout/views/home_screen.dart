// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:news_application/core/utils/styles/news_theme.dart';
import 'package:news_application/features/home_layout/presentation/cubit/news_cubit.dart';
import 'package:news_application/features/home_layout/presentation/cubit/news_states.dart';
import 'package:news_application/features/search/presentation/views/search_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create:(BuildContext context)=>NewsCubit()..getBusinessData()..getSportsData()..getScienceData(),
      child:BlocConsumer<NewsCubit,NewsStates>(builder:(context,state){
        NewsCubit cubit = BlocProvider.of(context);
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              currentIndex:cubit.currentIndex,
              onTap:(index){
                cubit.changeBarStates(index);
              },
              items:
              [
                BottomNavigationBarItem(icon:const Icon(Icons.business),label:"Bussiness"),
                BottomNavigationBarItem(icon:const Icon(Icons.sports),label:"Sports"),
                BottomNavigationBarItem(icon:const Icon(Icons.science),label:"Science"),
              ]
          ),
          appBar:AppBar(
            title:const Text("News App",style:TextStyle(fontSize:20.0,fontWeight:FontWeight.w600,color:Colors.black),),
            actions:
            [
              IconButton
                (
                  onPressed:()
                  {
                    Get.to(SearchScreen());
                  },
                  icon:const Icon(Icons.search,color:Colors.black,)
              ),
              IconButton
                (
                  onPressed:(){
                    if(Get.isDarkMode){
                      Get.changeTheme(Themes.customLightTheme);
                    }
                    else
                    {
                      Get.changeTheme(Themes.customDarkTheme);
                    }
                  },
                  icon:const Icon(Icons.brightness_4_outlined,color:Colors.black,)
              ),
            ],
          ),
          body:cubit.screens[cubit.currentIndex],
        );
      }, listener:(context,state){}),
    );
  }
}