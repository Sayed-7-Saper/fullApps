import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tak_n/modules/count/cubit/cubit.dart';
import 'package:tak_n/modules/count/cubit/states.dart';
/*
class Count extends StatefulWidget{
  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
  int countUser=1;
  @override
   void initState(){
    super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter ',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
      ),
      body: Center(
          child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(onPressed:(){setState(() {countUser--;

                    }); }, child: Text('MINUS',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)),
                    SizedBox(width: 20.0,),
                    Text('${countUser}',style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold),),
                    SizedBox(width: 20.0,),
                    TextButton(onPressed:() {setState(() {countUser++;});}, child: Text('PLUS',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)),

                  ],
                ),
            ),
    );
  }
}

 */

class Count extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // BolcProvider used to creat object from cubit
   // 1 -  var s = BlocProvider.of(context); // call any type of bloc anomnas ( T )


    return BlocProvider(
      create: (BuildContext context ) => CounterCubit(),
      // blocConsumer this widget to lisn change in method
      child: BlocConsumer<CounterCubit ,CounterStates>(
        builder:(context ,state){
          return Scaffold(
          appBar: AppBar(
            title: Text('Counter ',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed:()
                    {
                      CounterCubit.get(context).maius();

                    },
                    child: Text('MINUS',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)),
                SizedBox(width: 20.0,),
                Text('${CounterCubit.get(context).countUser}',style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold),),
                SizedBox(width: 20.0,),
                TextButton(
                    onPressed:()
                    {
                      CounterCubit.get(context).plus();
                    },
                    child: Text('PLUS',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)),
              ],
            ),
          ),
        ); } ,
        listener: (context , state ){
          if(state is CounterPlusState){ print(' i well push ${state.countUser}');} //becouse state came object from coounterP-M state
          if(state is CounterMaiusState){ print(' i well pop ${state.countUser}');}
         // if(state is CounterInitialState){ print(' i well creat');}
        },

      ),
    );
  }
}
