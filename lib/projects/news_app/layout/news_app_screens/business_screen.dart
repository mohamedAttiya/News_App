import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/projects/news_app/news_bloc/news_cubit.dart';
import 'package:shop_app/projects/news_app/news_bloc/news_states.dart';
import 'package:shop_app/projects/news_app/shared/components.dart';
class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
        builder:(context,state)
        {
         var list = NewsCubit.get(context).business;
          return articleBuilder(list);
        },
        listener:(context,state){}
    );
  }
}