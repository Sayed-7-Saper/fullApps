import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tak_n/models/user/user_model.dart';

class UserMod extends StatelessWidget{
  List <UserModel> user =[
    UserModel(id: 1, name: 'Sayed', phone: '1060508040'),
    UserModel(id: 2, name: 'Ail', phone: '106050899040'),
    UserModel(id: 3, name: 'Ahmed', phone: '106010508040'),
    UserModel(id: 4, name: 'Samy', phone: '10605558040'),
    UserModel(id: 5, name: 'Somsa', phone: '106052556040'),
    UserModel(id: 6, name: 'Mahmod', phone: '106044508040'),
    UserModel(id: 7, name: 'nader', phone: '1060505458040'),
    UserModel(id: 8, name: 'Saper', phone: '1060508798040'),
    UserModel(id: 9, name: 'Hassan', phone: '106044508040'),
    UserModel(id: 10, name: 'Mohamed', phone: '106050458040'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
      ),

      body:ListView.separated(
          itemBuilder:(context,index) => buildUserItem(user[index]) ,
          separatorBuilder: (context,index) => Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.blueGrey,
          ),
          itemCount: user.length,
      ),
    );
  }
Widget buildUserItem (UserModel use) =>  Padding(
  padding: const EdgeInsets.all(15.0),
  child: Row(
    children: [
      CircleAvatar(
        radius: 25.0,
        child: Text('${use.id}',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
      ),
      SizedBox(width: 20.0,),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('${use.name}',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
          Text('${use.phone}',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

        ],
      ),
    ],
  ),
);
}