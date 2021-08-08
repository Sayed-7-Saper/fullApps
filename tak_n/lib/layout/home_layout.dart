import 'package:conditional_builder/conditional_builder.dart';  // to intilsting  condtionalBalder
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';  //
import 'package:sqflite/sqflite.dart'; // to creat data base
import 'package:tak_n/modules/archived_task/archiveTasks.dart';
import 'package:tak_n/modules/done_task/doneTasks.dart';
import 'package:tak_n/modules/tasks/newTasks.dart';
import 'package:tak_n/shared/components/components.dart';
import 'package:tak_n/shared/components/constants.dart';
import 'package:tak_n/shared/cubit2/cubit.dart';
import 'package:tak_n/shared/cubit2/states.dart';

// made dy class statefulwidget by  used ( initstate and setstate )
/*
class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout>
{

  @override
  void initState()
  {
      super.initState();
      createDatabase();
  }


 Future <String> getName() async
 {
    return 'Sayed Saper';
  }
  int  curIndex =0;
  List < Widget> Screens =[
    NewTasks(),
    DoneTasks(),
    ArchiveTasks(),
  ];
  List <String> title=[
    ' Todo New Tasks',
    'Done Taske',
    'Archive Tasks',
  ];

  Database database;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var fromKey = GlobalKey <FormState>();
  bool istogelButtom = false;
  IconData fabIcon = Icons.edit;
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(title[curIndex],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0,),),
      ),
      body: ConditionalBuilder(
        condition: tasks.length > 0,
        builder: (context) => Screens[curIndex],
        fallback: (context) => Center(child: CircularProgressIndicator(),),
      ),
     /*floatingActionButton: FloatingActionButton(
        onPressed: () async
        {
          try {
            var name = await getName();
            print(name);
          }
          catch(error){
            print ('Error : ${error.toString() }');

          }
        },
        child: Icon(Icons.add),),
      */
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          /*
          //getName().then((value) {
            //print(value);
           // throw('errrrrrrrrrrroooooooooorrrrr !!!');
         // }).catchError((error){
          //  print('show error : ${error.toString()}');
         // });
         // insertDatabase();
          */

          if (istogelButtom){
            if (fromKey.currentState.validate()) {
              insertDatabase(
                title: titleController.text,
                time: timeController.text,
                data:dataController.text ,
              ).then((value){
                Navigator.pop(context);
                setState(() {
                  istogelButtom = false;
                  fabIcon = Icons.edit;
                  tasks = value;
                  print (tasks);
                });
              }).catchError((error){print('shoow erroe ${error.toString()}');});
            }
          } else{
          scaffoldKey.currentState.showBottomSheet(
                (context) =>
                    Container(
                      width: double.infinity,
                      color: Colors.grey[200],
                      child: Form(
                        key: fromKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            defoultTextFormField(
                                lable: 'Title :', hint: 'Enter title',
                                Type: TextInputType.text,
                                Controller: titleController,
                                vaildate: ( String value)
                                {
                                  if (value.isEmpty)
                                  {
                                    return 'this title is not premit  ';
                                  }
                                  return null ;
                                },
                                preicon: Icons.title
                            ),
                            SizedBox(height: 20.0,),
                            defoultTextFormField(
                                lable: 'Task time :', hint: 'Enter Time',
                                Type: TextInputType.datetime,
                                Controller: timeController,
                                vaildate: ( String value){
                                  if (value.isEmpty){
                                    return 'this time is not premit  ';
                                  } return null ;
                                },
                                preicon: Icons.watch_later,
                              onTap: (){
                                  showTimePicker(context: context,
                                      initialTime: TimeOfDay.now(),
                                  ) .then((value) {
                                    timeController.text = value.format(context).toString();
                                  });
                              },
                            ),
                            SizedBox(height: 20.0,),
                            defoultTextFormField(
                              lable: 'Task data :', hint: 'Enter data',
                              Type: TextInputType.datetime,
                              Controller: dataController,
                              vaildate: ( String value){
                                if (value.isEmpty){
                                  return 'this time is not premit  ';
                                } return null ;
                              },
                              preicon: Icons.calendar_today_outlined,
                              onTap: (){
                               showDatePicker(
                                   context: context,
                                   initialDate: DateTime.now(),
                                   firstDate: DateTime.now(),
                                   lastDate: DateTime.parse('2021-12-30'),
                               ).then((value) {
                                 dataController.text = DateFormat.yMMMd().format(value);
                               });
                              },
                            ),


                          ],
                        ),
                      ),


          ),
          ).closed.then((value) {
            istogelButtom = false;
            setState(() {
              fabIcon = Icons.edit;
            });

          });
          istogelButtom = true;
          setState(() {
            fabIcon = Icons.add;
          });
          }

        },
        child: Icon(fabIcon,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: curIndex,
        onTap: (Index){
          setState(() {
            curIndex = Index ;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.apps_rounded),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.addchart_sharp),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.analytics_sharp),
            label: 'Archive',
          ),

        ],
      ),
    );
  }


  void createDatabase () async {
    database = await openDatabase(
      'Todo.db',
      version: 1,
      onCreate: (database, version)
      {
        print('Database is Create');
        database.execute('CREATE TABLE tasks ( id INTEGER PRIMARY KEY, title TEXT , date TEXT ,status TEXT,time TEXT)')
            .then(
                (value){
              print ('HHHHHHHHHHHHHHHHHHHHHHHHHHH table DB');
            }
        ).catchError((error){print('Show Error1 : ${error.toString()}');}
        );
      },
      onOpen: (database){
        getDataFromDatabase(database).then((value){
          setState(() {
            tasks = value;
            print(tasks);
          });


        }
        );
        print(' database is opend');
      },
    );

  }

  Future insertDatabase ({
  @required title,
    @required data,
    @required time
}) async{
     return await database.transaction((txn){
      txn.rawInsert('INSERT INTO tasks (title , date ,status , time) VALUES ("$title","$data","new","$time")')
          .then(
              (value)
          {
            // print ('$value is inser Success');
          getDataFromDatabase(database).then((value){
            Navigator.pop(context);
            setState(() {
              istogelButtom = false;
              fabIcon = Icons.edit;
              tasks = value;
              print(tasks);

            });

            });

          }).catchError((error){print(' show error2 : ${error.toString()}');});
      return null;
    });
  }
 Future <List<Map>>  getDataFromDatabase (database)async{
     return await database.rowQuery('SELECT * FROM tasks');

  }



}
*/
class HomeLayout extends StatelessWidget
{
/*  Future <String> getName() async
  {
    return 'Sayed Saper';
  }*/

  var scaffoldKey = GlobalKey<ScaffoldState>();
  var fromKey = GlobalKey <FormState>();
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // .. to mack appcubit like object and used method inside
      create: (BuildContext context ) => AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit,AppStates>(
        builder: (context,state){
          AppCubit cubit  =  AppCubit.get(context);
          return  Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              title: Text(cubit.title[cubit.curIndex],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0,),),
            ),
            body: ConditionalBuilder(
              condition: state is! AppGetDatabaseLodingState,
              builder: (context) =>cubit. Screens[cubit.curIndex],
              fallback: (context) => Center(child: CircularProgressIndicator(),),
            ),

            floatingActionButton: FloatingActionButton(
              onPressed: ()
              {
                if (cubit.istogelButtom){
                  if (fromKey.currentState.validate()) {
                    cubit.insertDatabase(
                      title: titleController.text,
                      time: timeController.text,
                      data:dataController.text ,
                    );
                  }
                } else{
                  scaffoldKey.currentState.showBottomSheet(
                        (context) =>
                        Container(
                          width: double.infinity,
                          color: Colors.grey[200],
                          child: Form(
                            key: fromKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                defoultTextFormField(
                                    lable: 'Title :', hint: 'Enter title',
                                    Type: TextInputType.text,
                                    Controller: titleController,
                                    vaildate: ( String value)
                                    {
                                      if (value.isEmpty)
                                      {
                                        return 'this title is not premit  ';
                                      }
                                      return null ;
                                    },
                                    preicon: Icons.title
                                ),
                                SizedBox(height: 20.0,),
                                defoultTextFormField(
                                  lable: 'Task time :', hint: 'Enter Time',
                                  Type: TextInputType.datetime,
                                  Controller: timeController,
                                  vaildate: ( String value){
                                    if (value.isEmpty){
                                      return 'this time is not premit  ';
                                    } return null ;
                                  },
                                  preicon: Icons.watch_later,
                                  onTap: (){
                                    showTimePicker(context: context,
                                      initialTime: TimeOfDay.now(),
                                    ) .then((value) {
                                      timeController.text = value.format(context).toString();
                                    });
                                  },
                                ),
                                SizedBox(height: 20.0,),
                                defoultTextFormField(
                                  lable: 'Task data :', hint: 'Enter data',
                                  Type: TextInputType.datetime,
                                  Controller: dataController,
                                  vaildate: ( String value){
                                    if (value.isEmpty){
                                      return 'this time is not premit  ';
                                    } return null ;
                                  },
                                  preicon: Icons.calendar_today_outlined,
                                  onTap: (){
                                    showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime.parse('2021-12-30'),
                                    ).then((value) {
                                      dataController.text = DateFormat.yMMMd().format(value);
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                  ).closed.then((value) {
                    cubit.changeBottomSheet(icon:Icons.edit, isShow:false,);

                  });
                  cubit.changeBottomSheet(icon: Icons.add, isShow: true);
                }
              },
              child: Icon(cubit.fabIcon,),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.curIndex,
              onTap: (Index){
               cubit.changeIndex(Index);
              },
              items: [
                BottomNavigationBarItem(
                  icon:Icon(Icons.apps_rounded),
                  label: 'Tasks',
                ),
                BottomNavigationBarItem(
                  icon:Icon(Icons.addchart_sharp),
                  label: 'Done',
                ),
                BottomNavigationBarItem(
                  icon:Icon(Icons.analytics_sharp),
                  label: 'Archive',
                ),

              ],
            ),
          );
        },
        listener:(context,state){
          if(state is AppInsertDatabaseState){
            Navigator.pop(context);
          }

        } ,

      ),
    );
  }

}




