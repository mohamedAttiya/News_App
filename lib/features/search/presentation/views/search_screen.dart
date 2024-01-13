// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_application/core/widgets/article_builder.dart';
import 'package:news_application/features/home_layout/presentation/cubit/news_cubit.dart';
import 'package:news_application/features/home_layout/presentation/cubit/news_states.dart';
class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  var searchController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create:(BuildContext context)=>NewsCubit(),
      child:BlocConsumer<NewsCubit,NewsStates>(builder:(context,state){
        var list = NewsCubit.get(context).search;
        return Scaffold(
          appBar:AppBar(
          ),
          body:Form(
            key:formKey,
            child: Column(
              children:[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    style: TextStyle(color:Colors.black),
                    controller:searchController,
                    validator:(value)
                    {
                      if(value!.isEmpty)
                      {
                        return "Search must not be empty";
                      }
                      return null;
                    },
                    onChanged:(value)
                    {
                      NewsCubit.get(context).getSearchData(value);
                    },
                    keyboardType:TextInputType.text,
                    decoration:InputDecoration(
                      labelText:"Search",
                      prefixIcon:Icon(Icons.search),
                      border:OutlineInputBorder(),
                    ),
                  ),
                ),
                Expanded(child: articleBuilder(list,isSearch:true)),
              ],
            ),
          ),
        );
      }, listener:(context,state){}),
    );
  }
}