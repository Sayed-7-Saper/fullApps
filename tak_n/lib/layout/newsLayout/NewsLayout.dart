
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tak_n/layout/newsLayout/cubit/cubit.dart';
import 'package:tak_n/layout/newsLayout/cubit/states.dart';
import 'package:tak_n/modules/serch_scrren/serchScreen.dart';
import 'package:tak_n/shared/components/components.dart';

class NewLayoutHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 // return BlocProvider(
   // create: (BuildContext context) => AppCubit()..getBusiness(),
    return BlocConsumer<AppCubit, AppState>(
      builder: (context ,state){
        AppCubit cubit  =  AppCubit.get(context);
        return  Scaffold(
         appBar: AppBar(
          title: Text('News TO Day ?',),
         actions: [
            IconButton(icon: Icon(Icons.search_rounded),
               onPressed: (){
                   navigatorTo(context, SearchScreen(),);
               },
            ),
            IconButton(icon: Icon(Icons.brightness_4_sharp),
               onPressed: (){
                  AppCubit.get(context).ChangeAppMode();
            },
           ),
          ],
        ),

          body: cubit.Screens[cubit.curIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items:cubit.bottomItem,
            currentIndex: cubit.curIndex,
            onTap:(index) {
              cubit.ChangeBottomNavBar(index);
            },

          ),

    );
      },
      listener: (context ,state){},
    );

  }

}
