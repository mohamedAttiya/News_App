import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../news_bloc/news_cubit.dart';
import '../../news_bloc/news_states.dart';
import '../../shared/components.dart';
class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});
  @override
   Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
        builder:(context,state)
        {
          var list = NewsCubit.get(context).sports;
          return articleBuilder(list);
        },
        listener:(context,state){}
    );
  }
}