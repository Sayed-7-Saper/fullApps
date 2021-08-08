import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tak_n/layout/home_layout.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tak_n/layout/newsLayout/NewsLayout.dart';
import 'package:tak_n/layout/newsLayout/cubit/cubit.dart';
import 'package:tak_n/layout/newsLayout/cubit/states.dart';
import 'package:tak_n/modules/cal_screen/CalCalender.dart';
import 'package:tak_n/modules/count/Count.dart';
import 'package:tak_n/modules/home/Homescreen.dart';
import 'package:tak_n/modules/list_screen/ListMessage.dart';
import 'package:tak_n/modules/login/Loginscreen.dart';
import 'package:tak_n/modules/messanger_screen/messageScreen.dart';
import 'package:tak_n/modules/user_screen/UserModel.dart';
import 'package:tak_n/shared/blocOfserver.dart';
import 'package:tak_n/shared/network/local/cache_helper.dart';
import 'package:tak_n/shared/network/remote/dio_helper.dart';

void main()async
{
  // to insur to loding all data and statr app its imporet besose main is async
  WidgetsFlutterBinding.ensureInitialized();
  // used  bloc to  keep state screen  and tranport between layout
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
   await CacheHelper.init();
  // Use cubits...

  bool isDark=CacheHelper.getData(key: 'isDark');
  runApp(MyApp(isDark));

}

 class MyApp extends StatelessWidget
 {
   final bool isDark;
   MyApp(this.isDark);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> AppCubit()..getBusiness()..getSports()..getScience()),
        BlocProvider(create: (context)=> AppCubit()..ChangeAppMode(formShared: isDark,),),
      ],
      child: BlocConsumer<AppCubit,AppState>(
          builder: (context,state){
            return  MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(  primarySwatch: Colors.deepOrange,
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: AppBarTheme(
                backwardsCompatibility:false,
                systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white70,statusBarIconBrightness: Brightness.dark, ),
                backgroundColor: Colors.white,
                elevation: 0.0,
                titleTextStyle: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),
                iconTheme: IconThemeData(
                    color: Colors.black
                ),
              ),
              textTheme:TextTheme(bodyText1: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,color: Colors.black)) ,
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                selectedItemColor: Colors.deepOrangeAccent,
                backgroundColor: Colors.blueGrey,
                unselectedItemColor: Colors.black87,
              ),

            ),

            darkTheme:ThemeData(
              primarySwatch: Colors.deepOrange,
              scaffoldBackgroundColor: Colors.black,
              appBarTheme: AppBarTheme(
                backwardsCompatibility:false,
                systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.black,statusBarIconBrightness: Brightness.light, ),
                backgroundColor: Colors.black,elevation: 0.0,
                titleTextStyle: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
              ),

              textTheme:TextTheme(bodyText1: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,color: Colors.white)) ,
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                selectedItemColor: Colors.deepOrangeAccent,
                backgroundColor: Colors.blueGrey,
                unselectedItemColor: Colors.white,
              ),

            ),
            themeMode:AppCubit.get(context).isDark? ThemeMode.dark:ThemeMode.light,

            // home: HomeScreen(),
            //home: LoginScreen(),
            //home: MessageSreen(),
            //home:listMessage(),
            // home:UserMod(),
            // home:Count(),
            // home: BmiScreen(),
            //home:HomeLayout(),
            home: NewLayoutHome(),

          );
            },
          listener: (context,state){},
      ),
    );

  }

 }

