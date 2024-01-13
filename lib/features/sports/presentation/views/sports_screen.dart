import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_application/core/widgets/article_builder.dart';
import 'package:news_application/features/home_layout/presentation/cubit/news_cubit.dart';
import 'package:news_application/features/home_layout/presentation/cubit/news_states.dart';
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