

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tak_n/layout/newsLayout/cubit/states.dart';
import 'package:tak_n/modules/businss_screen/businssScreen.dart';
import 'package:tak_n/modules/setings_screen/settingsScreen.dart';
import 'package:tak_n/modules/sience_screen/sienceScreen.dart';
import 'package:tak_n/modules/sports_screen/sportsScreen.dart';
import 'package:tak_n/shared/network/local/cache_helper.dart';
import 'package:tak_n/shared/network/remote/dio_helper.dart';

class AppCubit extends Cubit<AppState>{
  AppCubit() : super(InitialState());
  static AppCubit get(context) => BlocProvider.of(context);
 int  curIndex = 0;
 void ChangeBottomNavBar (int index) {
   curIndex = index;
  // if (index == 0){getBusiness();}
   //if (index == 1 ){ getSports(); }
   //if(index ==2) {getScience(); }
   emit(ChangeBottomNavBarState());
}
List<BottomNavigationBarItem> bottomItem =[
  BottomNavigationBarItem(icon: Icon(Icons.business),label: 'Business'),
  BottomNavigationBarItem(icon: Icon(Icons.sports_baseball),label:'Sport'),
  BottomNavigationBarItem(icon: Icon(Icons.science),label:'Science'),
  BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
];
 List<Widget> Screens =[
   BusinssScreen(),
   SportsScreen(),
   SienceScreen(),
   SettingScreen(),
 ];
 List <dynamic> business=[];
 void getBusiness(){
   emit(NewLoadingBusinessState());
   if(business.length ==0){
     DioHelper.getData(
       url: 'v2/top-headlines',
       query: {
         'country':'eg',
         'category':'business',
         'apiKey':'65f7f556ec76449fa7dc7c0069f040ca',
       },
     ).then((value)
     {
       business= value.data['articles'];
       // print( 'Show Data : ${business[0]['title']} ');
       emit(NewGetBusinessSuccessState());
     }).catchError((error){
       print ('error : ${error.toString()}');
       emit(NewGetBusinessErrorState(error.toString()));
     });
   }else{
     emit(NewGetBusinessSuccessState());
   }

 }

  List <dynamic> sports=[];
  void getSports(){
    emit(NewLoadingSportState());
    if (sports.length ==0){
      DioHelper.getData(
        url: 'v2/top-headlines',
        query: {
          'country':'eg',
          'category':'sports',
          'apiKey':'65f7f556ec76449fa7dc7c0069f040ca',
        },
      ).then((value)
      {
        business= value.data['articles'];
        // print( 'Show Data : ${sports[0]['title']} ');
        emit(NewGetSportSucessState());
      }).catchError((error){
        print ('error : ${error.toString()}');
        emit(NewGetSportErrorState(error.toString()));
      });

    }else{
      emit(NewGetSportSucessState());
    }



  }


  List <dynamic> science=[];
  void getScience(){
    emit(NewLoadingSienceState());
    if (science.length ==0){
      DioHelper.getData(
        url: 'v2/top-headlines',
        query: {
          'country':'eg',
          'category':'science',
          'apiKey':'65f7f556ec76449fa7dc7c0069f040ca',
        },
      ).then((value)
      {
        business= value.data['articles'];
        // print( 'Show Data : ${business[0]['title']} ');
        emit(NewGetSienceSuccessState());
      }).catchError((error){
        print ('error : ${error.toString()}');
        emit(NewGetSienceErrorState(error.toString()));
      });
    }else{
      emit(NewGetSienceSuccessState());
    }


  }

  bool isDark =false;
void ChangeAppMode({bool formShared}){
  if(formShared != null) {
    isDark = formShared;
    emit(AppChangeModeState());

  }
  else {
    isDark = !isDark;
    CacheHelper.putData(key: 'isDark', value: isDark).then((value) {
      emit(AppChangeModeState());
    });
  }

}

List <dynamic> search=[];
void getSearch(String value){
  emit(NewLoadingSearchState());
  search=[];
  if (search.length == 0){
    DioHelper.getData(
      url: 'v2/everything',
      query: {
        'q':'$value',
        'apiKey':'d5d6501c0d104470910d7c5b7e769736',
      },
    ).then((value) {
      search=value.data['articles'];
      emit(NewGetSearchSucessState());
    }).catchError((error)
    {
      print(' show erroe : ${error.toString()}');
      emit(NewGetSearchErrorState(error.toString()));
    });
  }else{
    emit(NewGetSearchSucessState());
  }

}


}


