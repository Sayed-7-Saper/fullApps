import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final int result;
  final int age;
  final bool ismale;

  BMIResult({ @required this.ismale,@required this.age,@required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result CALC'),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(' The idel body : 25.0 ?',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(' Gender :${ismale}',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(' Age :${age}',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 15.0,),
            Text(' Result :${result}',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),

          ],
        ),
      ),
    );
  }
}
