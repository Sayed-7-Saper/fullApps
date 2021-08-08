import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tak_n/layout/newsLayout/cubit/cubit.dart';
import 'package:tak_n/layout/newsLayout/cubit/states.dart';


class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppState>(
      builder: (context,state){
        return Center(
          child: Container(
            child: Text('Seting Options ',style :TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.red),),
          ),
        );
      },
      listener: (context,state){},
    );
  }
}