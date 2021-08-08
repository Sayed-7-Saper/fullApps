
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tak_n/layout/newsLayout/cubit/cubit.dart';
import 'package:tak_n/layout/newsLayout/cubit/states.dart';
import 'package:tak_n/shared/components/components.dart';


class SportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppState>(
      builder: (context,state){
        var list = AppCubit.get(context).sports;
        return articleBuilder(list,context);
       /*   ListView.separated(itemBuilder:(context,index)=> bulidArticleItem(list[index],context),
          separatorBuilder: (context,index)=>Container(height: 1,color: Colors.grey,),
          itemCount: 10,);*/
      },
      listener: (context,state){},
    );
  }
}
