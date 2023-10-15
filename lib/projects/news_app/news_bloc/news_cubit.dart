import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/projects/news_app/layout/news_app_screens/business_screen.dart';
import 'package:shop_app/projects/news_app/layout/news_app_screens/science_screen.dart';
import 'package:shop_app/projects/news_app/layout/news_app_screens/sports_screen.dart';
import 'package:shop_app/projects/news_app/news_bloc/news_states.dart';
import 'package:shop_app/projects/news_app/news_network/news_remote_network/dio_helper.dart';
class NewsCubit extends Cubit<NewsStates>{
  NewsCubit():super(InitialState());
  static NewsCubit get(context)=>BlocProvider.of(context);
  int currentIndex = 0;
  List<dynamic> business=[];
  List<dynamic> sports = [];
  List<dynamic> science = [];
  List<dynamic> search = [];
  List<Widget> screens =
  [
    const BusinessScreen(),
    const SportsScreen(),
    const ScienceScreen(),
  ];
  void changeBarStates(int index){
    currentIndex = index;
    emit(BottomNavBarState());
  }
  void getBusinessData()
  {
    emit(NewsBusinessGetDataLoading());
    DioHelper.getData(
        url:"v2/top-headlines",
        query:{
          'country':'us',
          'category':'business',
          'apiKey':'e38d725e926946d58778c4f6f492d5b8'}
    ).then((value){
      business = value.data['articles'];
      emit(NewsBusinessGetDataSuccess());
    }).catchError((error){
      print(error.toString());
      emit(NewsBusinessGetDataError(error.toString()));
    });
  }
  void getSportsData()
  {
    emit(NewsSportsGetDataLoading());
    if(sports.length==0)
    {
      DioHelper.getData
        (
          url:"v2/top-headlines",
          query:{
            'country':'us',
            'category':'sports',
            'apiKey':'e38d725e926946d58778c4f6f492d5b8'}
      ).then((value){
        sports = value.data['articles'];
        emit(NewsSportsGetDataSuccess());
      }).catchError((error){
        print(error.toString());
        emit(NewsSportsGetDataError(error.toString()));
      });
    }
    else
    {
      emit(NewsSportsGetDataSuccess());
    }
  }
  void getScienceData()
  {
    emit(NewsScienceGetDataLoading());
    if(science.length == 0)
    {
      DioHelper.getData
        (
          url:"v2/top-headlines",
          query:{
            'country':'us',
            'category':'science',
            'apiKey':'e38d725e926946d58778c4f6f492d5b8'}
      ).then((value){
        science = value.data['articles'];
        emit(NewsScienceGetDataSuccess());
      }).catchError((error){
        print(error.toString());
        emit(NewsScienceGetDataError(error.toString()));
      });
    }
    else
    {
      emit(NewsScienceGetDataSuccess());
    }
  }
  void getSearchData(String? value)
  {
    emit(NewsSearchGetDataLoading());
    search =[];
      DioHelper.getData
        (
          url:"v2/everything",
          query:{
            'q':'$value',
            'apiKey':'e38d725e926946d58778c4f6f492d5b8'
          }
      ).then((value){
        search = value.data['articles'];
        emit(NewsSearchGetDataSuccess());
      }).catchError((error){
        print(error.toString());
        emit(NewsSearchGetDataError(error.toString()));
      });
    }
  }