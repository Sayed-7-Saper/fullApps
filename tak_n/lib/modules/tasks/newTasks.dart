import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tak_n/shared/components/components.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tak_n/shared/components/constants.dart';
import 'package:tak_n/shared/cubit2/cubit.dart';
import 'package:tak_n/shared/cubit2/states.dart';
class  NewTasks extends StatelessWidget {
  //final List<Map> tasks;
  //NewTasks({ this.tasks });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      builder: (context,state){
        var tasks = AppCubit.get(context).newTasks;
        return  ListView.separated(
          itemBuilder: (context,index) => bulidTaskItem(tasks[index],context),
          separatorBuilder: (context,index)=> Container(
            width: double .infinity,
            height: 1.0,
            color: Colors.grey[300],

          ),
          itemCount: tasks.length,);
      },
      listener: (context,state){

      },

    );
  }
}
