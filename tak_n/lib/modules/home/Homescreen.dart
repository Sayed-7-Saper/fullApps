
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     // how to used appbar by defferien parts ( Leading , Title  , Actions ) ! .

   appBar: AppBar(
     foregroundColor: Colors.deepOrange,
     backgroundColor: Colors.indigo,
     elevation: 40.0,
     title: Text('Fam_App'),
    // leading: Icon(
       //Icons.account_circle_outlined,

   //  ),
     leading: IconButton(icon: Icon(Icons.article_sharp,),onPressed: ()=> print('chosse form List items '),),

     actions: [
       IconButton(icon: Icon(Icons.attach_email_sharp),onPressed: null ,),
      // IconButton(icon: Icon(Icons.perm_identity_sharp),onPressed: null ,),
       IconButton(icon: Icon(Icons.add_ic_call_sharp),onPressed: () => print('Call some one') ,color: Colors.deepOrange, ),
       IconButton(icon: Icon(Icons.perm_identity),onPressed: (){print('the acount is creat ');}, ),

      /* Icon(
         Icons.adb_rounded,
       ),
       Icon(Icons.perm_identity),
       Text('Tcons',),
*/
     ],


   ),
     //  SafeArea  in body used whene not use appbar to start  ander area of appbar
     /*
     body: SafeArea(
       child: Text('wellcom sankanar ',style: new TextStyle(color: Colors.indigo,fontWeight: FontWeight.w700,
           fontSize:15.0),),

     ),
*/


     // how to used colmon and why rip Container becouse includes more propertes
      /*
     body:Container(
       color: Colors.blueGrey,
       width: double.infinity,
       child: Column(
         mainAxisSize: MainAxisSize.max,
         mainAxisAlignment: MainAxisAlignment.end,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Container(
              child:Column(
                children: [
             // to made text like button and used click (inkwell) .//
                  InkWell(
                    child: Text("first",textDirection: TextDirection.ltr,style: TextStyle(
                       color: Colors.white70,
                       fontSize: 30,
                       backgroundColor: Colors.indigo
             ),),;
                    onTap: ()=> print('Hellcom'),
                    onDoubleTap: () => print('hello'),
                  ),

                ],
              ),
           ),

           /*
           Expanded(
             child: Container(
               height: 20.0,
               color: Colors.lightGreen,
               child: Text(
                 'Frist Page',
                 style: TextStyle(
                     color: Colors.white70,
                     fontSize: 30,
                   //  backgroundColor: Colors.indigo
                 ),
               ),
             ),
           ),
           Expanded(
             child: Container(
               height: 30.0,

               color: Colors.indigo,
               child: Text(
                 'Second Page',
                 style: TextStyle(
                     color: Colors.white70,
                     fontSize: 30,
                    //backgroundColor: Colors.indigo,
                 ),
               ),
             ),
           ),

           Expanded(
             child: Container(
               height: 50.0,

               color: Colors.purple,
               child: Text(
                 'Wellcom  Page',
                 style: TextStyle(
                     color: Colors.white70,
                     fontSize: 45,
                    // backgroundColor: Colors.indigo,
                 ),
               ),
             ),
           ),
           Expanded(
             child: Container(
               color: Colors.amberAccent,
               height: 30.0,
               child: Text(
                 'thrid Page',
                 style: TextStyle(
                     color: Colors.white70,
                     fontSize: 30,
                     //backgroundColor: Colors.indigo,
                 ),
               ),
             ),
           ),

            */

         ],
       ),


     ),

*/
     // how to used Row
     /*
     body: Container(
       color: Colors.blueGrey,
       height: double.infinity,
       child: Row(
         mainAxisSize: MainAxisSize.max,
         //verticalDirection: VerticalDirection.down ,
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children:[
           Expanded(
             child: Container(
               //height: double.infinity,
               child: Text('Frist Row Option:',style: TextStyle(
                   color: Colors.white70,
                   fontSize: 30,
                   backgroundColor: Colors.amber
               ),
               ),
             ),
           ),
           Expanded(
             child: Container(
              // height: double.infinity,
               child: Text('Frist  Option:',style: TextStyle(
                   color: Colors.white70,
                   fontSize: 30,
                   backgroundColor: Colors.amber
               ),
               ),
             ),
           ),
           Expanded(
             child: Container(
               //height: double.infinity,
               child: Text(' Row Option:',style: TextStyle(
                   color: Colors.white70,
                   fontSize: 30,
                   backgroundColor: Colors.amber
               ),
               ),
             ),
           ),



         ],

       ),
     ),
*/

// single child scroll view in column and row
/*
     body: SingleChildScrollView(
       scrollDirection: Axis.horizontal, //------------------------
       // scrollDirection: Axis.vertical \||||

         child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.start,
           children:[
             Text('ssssssssssssssss',style: TextStyle(fontSize: 30.0),),
             Text('ffffffffffffffff',style: TextStyle(fontSize: 30.0),),
             Text('tttttttttttttttt',style: TextStyle(fontSize: 30.0),),
             Text('rrrrrrrrrrrrrrrr',style: TextStyle(fontSize: 30.0),),
             Text('ssssssssssssssss',style: TextStyle(fontSize: 30.0),),
             Text('ffffffffffffffff',style: TextStyle(fontSize: 30.0),),
             Text('tttttttttttttttt',style: TextStyle(fontSize: 30.0),),
             Text('rrrrrrrrrrrrrrrr',style: TextStyle(fontSize: 30.0),),
             Text('ssssssssssssssss',style: TextStyle(fontSize: 30.0),),
             Text('ffffffffffffffff',style: TextStyle(fontSize: 30.0),),
             Text('tttttttttttttttt',style: TextStyle(fontSize: 30.0),),
             Text('rrrrrrrrrrrrrrrr',style: TextStyle(fontSize: 30.0),),
             Text('ssssssssssssssss',style: TextStyle(fontSize: 30.0),),
             Text('ffffffffffffffff',style: TextStyle(fontSize: 30.0),),
             Text('tttttttttttttttt',style: TextStyle(fontSize: 30.0),),
             Text('rrrrrrrrrrrrrrrr',style: TextStyle(fontSize: 30.0),),
             Text('ssssssssssssssss',style: TextStyle(fontSize: 30.0),),
             Text('ffffffffffffffff',style: TextStyle(fontSize: 30.0),),
             Text('tttttttttttttttt',style: TextStyle(fontSize: 30.0),),
             Text('rrrrrrrrrrrrrrrr',style: TextStyle(fontSize: 30.0),),

           ],
         ),

     ),
*/
   body: Column(
     mainAxisSize: MainAxisSize.min,
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
       Container(
         padding: const EdgeInsets.all(30.0),
         decoration:BoxDecoration(
           borderRadius: BorderRadius.circular(30.0),
         ),
         clipBehavior: Clip.antiAliasWithSaveLayer,
         child: Stack(
           children:[
             Image(
               image:NetworkImage(
                 'https://i.pinimg.com/564x/f7/97/42/f797426f043d2cd954891f7d17686887.jpg',
               ),
               height: 250.0,
               width: 250.0,
               fit: BoxFit.fill,
             ),
             Text('Car Childhod ',style: TextStyle(fontSize: 30.0,color: Colors.indigo,backgroundColor: Colors.black45,),textAlign: TextAlign.center,)

           ]

         ),
       )
     ],
   ),


     );

  }

}