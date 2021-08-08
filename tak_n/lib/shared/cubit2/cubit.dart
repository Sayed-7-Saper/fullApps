
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tak_n/modules/archived_task/archiveTasks.dart';
import 'package:tak_n/modules/done_task/doneTasks.dart';
import 'package:tak_n/modules/tasks/newTasks.dart';
import 'package:tak_n/shared/cubit2/states.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit(): super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  Database database;
  List<Map> newTasks=[];
  List<Map> doneTasks=[];
  List<Map> archivedTasks=[];

  bool istogelButtom = false;
  IconData fabIcon = Icons.edit;

  int  curIndex =0;
  List < Widget> Screens =[
    NewTasks(),
    DoneTasks(),
    ArchiveTasks(),
  ];
  List <String> title=[
    ' Todo New Tasks',
    'Done Taske',
    'Archive Tasks'
  ];
  void changeIndex( int index){
    curIndex = index;
    emit(AppChangeBotttonNavBarState());
  }

  void changeBottomSheet({
    @required IconData icon ,
    @required  bool isShow,
})
  {
    istogelButtom = isShow;
    fabIcon=icon;
   // emit(AppChangeBotttonNavBarState());
    emit(AppChangeFloutBottomSheet());
  }

  void createDatabase ()  {
     openDatabase(
      'Todo.db',
      version: 1,
      onCreate: (database, version)
      {
        print('Database is Create');
        database.execute('CREATE TABLE tasks ( id INTEGER PRIMARY KEY, title TEXT , date TEXT ,status TEXT,time TEXT)')
            .then(
                (value){
              print ('Creating table DB');
            }
        ).catchError((error){print('Show Error1 : ${error.toString()}');}
        );
      },
      onOpen: (database){
        getDataFromDatabase(database);
        print(' database is opend');
      },
    ).then((value) {
      database =value;
      emit(AppcreatDatabaseState());
    });
  }

   insertDatabase ({
    @required String  title,
    @required  String data,
    @required  String time
  }) async{
     await database.transaction((txn) {
       txn.rawInsert(
           'INSERT INTO tasks (title , date ,status , time) VALUES ("$title","$data","new","$time")',)
           .then(
               (value) {
             print('$value is insert Success');
             emit(AppInsertDatabaseState());
             getDataFromDatabase(database);
           }).catchError((error) {
         print('Error when Insert New Record ${error.toString()}');
       });
       return null;
     });
     }
  void getDataFromDatabase(database)
  {
    newTasks = [];
    doneTasks = [];
    archivedTasks = [];
    emit(AppGetDatabaseLodingState());
    database.rawQuery('SELECT * FROM tasks').then((value) {
      value.forEach((element) {
        if (element['status'] == 'new')
          newTasks.add(element);
        else if (element['status'] == 'done')
          doneTasks.add(element);
        else
          archivedTasks.add(element);
      });
      emit(AppGetDatabaseState());
    });

  }

  void updataData({
  @required int id ,
    @required String status,
})async{
     database.rawUpdate(
        'UPDATE tasks SET status = ?  WHERE id = ?',
        ['$status',  id ]
    ).then((value) {
      getDataFromDatabase(database);
      emit(AppUpdataDatabaseState());
      
     }).catchError((error){print('show error Happend in updata ${error.toString()}');});
  }
  void deletData({
    @required int id ,
  })async{
    database.rawDelete('DELETE FROM tasks WHERE id = ?', [id]
    ).then((value) {
      getDataFromDatabase(database);
      emit(AppdeletDatabaseState());
    }).catchError((error){print('show error Happend in delet ${error.toString()}');});
  }
}


  // Future <List<Map>>  getDataFromDatabase (database)async{
  //   emit(AppGetDatabaseLodingState());
  //   return await database.rowQuery('SELECT * FROM tasks');
  //
  // }

  /*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:udemy_flutter/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:udemy_flutter/modules/done_tasks/done_tasks_screen.dart';
import 'package:udemy_flutter/modules/new_tasks/new_tasks_screen.dart';
import 'package:udemy_flutter/shared/cubit/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];

  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

  Database database;
  List<Map> newTasks = [];
  List<Map> doneTasks = [];
  List<Map> archivedTasks = [];

  void createDatabase() {
    openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        // id integer
        // title String
        // date String
        // time String
        // status String

        print('database created');
        database
            .execute(
                'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)')
            .then((value) {
          print('table created');
        }).catchError((error) {
          print('Error When Creating Table ${error.toString()}');
        });
      },
      onOpen: (database)
      {
        getDataFromDatabase(database);
        print('database opened');
      },
    ).then((value) {
      database = value;
      emit(AppCreateDatabaseState());
    });
  }

  insertToDatabase({
    @required String title,
    @required String time,
    @required String date,
  }) async {
    await database.transaction((txn) {
      txn
          .rawInsert(
        'INSERT INTO tasks(title, date, time, status) VALUES("$title", "$date", "$time", "new")',
      )
          .then((value) {
        print('$value inserted successfully');
        emit(AppInsertDatabaseState());

        getDataFromDatabase(database);
      }).catchError((error) {
        print('Error When Inserting New Record ${error.toString()}');
      });

      return null;
    });
  }

  void getDataFromDatabase(database)
  {
    newTasks = [];
    doneTasks = [];
    archivedTasks = [];

    emit(AppGetDatabaseLoadingState());

    database.rawQuery('SELECT * FROM tasks').then((value) {

      value.forEach((element)
      {
        if(element['status'] == 'new')
          newTasks.add(element);
        else if(element['status'] == 'done')
          doneTasks.add(element);
        else archivedTasks.add(element);
      });

      emit(AppGetDatabaseState());
    });
  }

  void updateData({
  @required String status,
  @required int id,
}) async
  {
    database.rawUpdate(
      'UPDATE tasks SET status = ? WHERE id = ?',
      ['$status', id],
    ).then((value)
    {
      getDataFromDatabase(database);
      emit(AppUpdateDatabaseState());
    });
  }

  void deleteData({
    @required int id,
  }) async
  {
    database.rawDelete('DELETE FROM tasks WHERE id = ?', [id])
        .then((value)
    {
      getDataFromDatabase(database);
      emit(AppDeleteDatabaseState());
    });
  }

  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.edit;

  void changeBottomSheetState({
    @required bool isShow,
    @required IconData icon,
  }) {
    isBottomSheetShown = isShow;
    fabIcon = icon;

    emit(AppChangeBottomSheetState());
  }
}

*/

