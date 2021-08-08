
import 'package:flutter/material.dart';

class MessageSreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor:Colors.black,

     appBar: AppBar(
       titleSpacing: 20.0,
       backgroundColor: Colors.black,
       elevation: 0.0,
       title: Row(
         children: [
           CircleAvatar(
             radius: 20.0,
             backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),

           ),
           SizedBox(width:20.0,),
           Text('Chats',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25.0),),
         ],
       ),
       actions: [
         IconButton(
           icon: CircleAvatar(
             backgroundColor: Colors.blueGrey[750],
             foregroundColor: Colors.white,
             child: Padding(
               padding: const EdgeInsets.all(5.0),
               child: Icon
                 (
                 Icons.camera_alt
               ),
             ),
           ), 
             onPressed: null,
          // color: Colors.white,
         ),
         IconButton(
           icon: CircleAvatar(
           backgroundColor: Colors.blueGrey[750],
           foregroundColor: Colors.white,
             child: Padding(
               padding: const EdgeInsets.all(5.0),
               child: Icon
                 (
                   Icons.edit
               ),
             )
         ),
           onPressed:null,
           //color: Colors.white,
         ),
         SizedBox(height: 20.0,),
       ],



     ),


     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SizedBox(height: 16.0,),
         // used container to made index search of Box
         Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15.0),
             color: Colors.blueGrey,
           ),

           padding: const EdgeInsets.all(5.0),
           child: Row(
             children: [
               Icon(Icons.search_rounded),
               SizedBox(width: 15.0,),
               Text('Search',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0),),
             ],
           ),
         ),
          /////////////////////////////////////////////
         // 1- use srcollView horizontal to descrip swap in Row
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
              Row(
                children: [
                  // use container to creat icon in start row scroll
              Container(width: 50.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  //  SizedBox(height: 20.0,),
                    IconButton(icon: CircleAvatar(
                      radius: 25.0,
                    backgroundColor: Colors.blueGrey[750],
                        foregroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon
                            (
                              Icons.video_call_sharp,
                          ),
                        ),
                    ),
                    ),
                    SizedBox(height: 5.0,),
                    Text('Creat Room ',maxLines: 2,overflow : TextOverflow.ellipsis,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16.0), ),
                  ],

                ),

              ),
                  // made item user in single Container *** this bad case but best in list
                  Container(

                    width: 60.0,
                    child: Column(

                      children: [
                        SizedBox(height:20.0,),
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 6.0,
                              backgroundColor: Colors.green,
                            ),


                          ],
                        ),
                        Text('ELsayed Saper ',maxLines: 2,overflow : TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),


                      ],
                    ),

                  ),
                  SizedBox(width: 5.0,),
                  Container(

                    width: 60.0,
                    child: Column(

                      children: [
                        SizedBox(height:20.0,),
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 6.0,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        Text('ELsayed Saper ',maxLines: 2,overflow : TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),


                      ],

                    ),

                  ),
                  SizedBox(width: 5.0,),
                  Container(

                    width: 60.0,
                    child: Column(

                      children: [
                        SizedBox(height:20.0,),
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 6.0,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        Text('ELsayed Saper  Hassan',maxLines: 2,overflow : TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),

                      ],
                    ),

                  ),
                  SizedBox(width: 5.0,),
                  Container(

                    width: 60.0,
                    child: Column(

                      children: [
                        SizedBox(height:20.0,),
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 6.0,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        Text('ELsayed Saper ',maxLines: 2,overflow : TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),


                      ],
                    ),

                  ),
                  SizedBox(width: 5.0,),
                  Container(

                    width: 60.0,
                    child: Column(

                      children: [
                        SizedBox(height:20.0,),
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 6.0,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        Text('ELsayed Saper ',maxLines: 2,overflow : TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),


                      ],
                    ),

                  ),
                  SizedBox(width: 5.0,),
                  Container(

                    width: 60.0,
                    child: Column(

                      children: [
                        SizedBox(height:20.0,),
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 6.0,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        Text('ELsayed Saper ',maxLines: 2,overflow : TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),


                      ],
                    ),

                  ),
                  SizedBox(width: 5.0,),
                  Container(

                    width: 60.0,
                    child: Column(

                      children: [
                        SizedBox(height:20.0,),
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 6.0,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        Text('ELsayed Saper ',maxLines: 2,overflow : TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),


                      ],
                    ),

                  ),
                  SizedBox(width: 5.0,),

                ],
              ),
          ),
         //////////////////////////////////////////////
         SizedBox(height: 20.0,),
         Expanded(
           child: SingleChildScrollView(
                 child:Column(
                   mainAxisSize: MainAxisSize.min,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       mainAxisSize: MainAxisSize.min,

                       children: [
                         Stack(
                           alignment: AlignmentDirectional.bottomEnd,
                           children: [
                             CircleAvatar(
                               radius: 25.0,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                             ),
                             CircleAvatar(
                               radius: 7.0,
                               backgroundColor: Colors.white,
                             ),
                             CircleAvatar(
                               radius: 6.0,
                               backgroundColor: Colors.green,
                             ),

                           ],

                         ),
                         SizedBox(width: 25.0,),
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(width: 20.0,),
                               Text('elsayed TagElden ',maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),
                               Row(
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   Expanded(
                                       child:Row(
                                         children: [

                                           Text('Show Last Message',maxLines: 1,overflow: TextOverflow.ellipsis,style:TextStyle(color: Colors.white),),
                                           SizedBox(width: 15.0,),
                                           SizedBox(height: 20.0,),


                                           Container(
                                             width: 7.0,
                                             height: 7.0,
                                             decoration: BoxDecoration(color: Colors.blue,shape: BoxShape.circle),
                                           ),
                                           SizedBox(width: 15.0,),

                                           Text('08:25',style: TextStyle(color: Colors.white),),
                                         ],
                                       ),

                                   ),
                                 ],
                               ),

                             ],
                           ),
                         ),




                       ],


                     ),
                     SizedBox(height: 20.0,),
                     Row(
                       mainAxisSize: MainAxisSize.min,

                       children: [
                         Stack(
                           alignment: AlignmentDirectional.bottomEnd,
                           children: [
                             CircleAvatar(
                               radius: 25.0,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                             ),
                             CircleAvatar(
                               radius: 7.0,
                               backgroundColor: Colors.white,
                             ),
                             CircleAvatar(
                               radius: 6.0,
                               backgroundColor: Colors.green,
                             ),

                           ],

                         ),
                         SizedBox(width: 25.0,),
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(width: 20.0,),


                               Text('elsayed TagElden ',maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),
                               Row(
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   Expanded(
                                     child:Row(
                                       children: [

                                         Text('ده ايه بقي ',maxLines: 1,overflow: TextOverflow.ellipsis,style:TextStyle(color: Colors.white),),
                                         SizedBox(width: 15.0,),
                                         SizedBox(height: 20.0,),


                                         Container(
                                           width: 7.0,
                                           height: 7.0,
                                           decoration: BoxDecoration(color: Colors.blue,shape: BoxShape.circle),
                                         ),
                                         SizedBox(width: 15.0,),

                                         Text('08:26',style: TextStyle(color: Colors.white),),
                                       ],
                                     ),

                                   ),
                                 ],
                               ),

                             ],
                           ),
                         ),
                       ],

                     ),
                     SizedBox(height: 20.0,),
                     Row(
                       mainAxisSize: MainAxisSize.min,

                       children: [
                         Stack(
                           alignment: AlignmentDirectional.bottomEnd,
                           children: [
                             CircleAvatar(
                               radius: 25.0,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                             ),
                             CircleAvatar(
                               radius: 7.0,
                               backgroundColor: Colors.white,
                             ),
                             CircleAvatar(
                               radius: 6.0,
                               backgroundColor: Colors.green,
                             ),

                           ],

                         ),
                         SizedBox(width: 25.0,),
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(width: 20.0,),


                               Text('elsayed TagElden ',maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),
                               Row(
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   Expanded(
                                     child:Row(
                                       children: [

                                         Text('ده chat message ',maxLines: 1,overflow: TextOverflow.ellipsis,style:TextStyle(color: Colors.white),),
                                         SizedBox(width: 15.0,),
                                         SizedBox(height: 20.0,),


                                         Container(
                                           width: 7.0,
                                           height: 7.0,
                                           decoration: BoxDecoration(color: Colors.blue,shape: BoxShape.circle),
                                         ),
                                         SizedBox(width: 15.0,),

                                         Text('08:27',style: TextStyle(color: Colors.white),),
                                       ],
                                     ),

                                   ),
                                 ],
                               ),

                             ],
                           ),
                         ),




                       ],


                     ),
                     SizedBox(height: 20.0,),
                     Row(
                       mainAxisSize: MainAxisSize.min,

                       children: [
                         Stack(
                           alignment: AlignmentDirectional.bottomEnd,
                           children: [
                             CircleAvatar(
                               radius: 25.0,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                             ),
                             CircleAvatar(
                               radius: 7.0,
                               backgroundColor: Colors.white,
                             ),
                             CircleAvatar(
                               radius: 6.0,
                               backgroundColor: Colors.green,
                             ),

                           ],

                         ),
                         SizedBox(width: 25.0,),
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(width: 20.0,),


                               Text('elsayed TagElden ',maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),
                               Row(
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   Expanded(
                                     child:Row(
                                       children: [

                                         Text('يعني بيعمل ايه برضو ',maxLines: 1,overflow: TextOverflow.ellipsis,style:TextStyle(color: Colors.white),),
                                         SizedBox(width: 15.0,),
                                         SizedBox(height: 20.0,),


                                         Container(
                                           width: 7.0,
                                           height: 7.0,
                                           decoration: BoxDecoration(color: Colors.blue,shape: BoxShape.circle),
                                         ),
                                         SizedBox(width: 15.0,),

                                         Text('08:28',style: TextStyle(color: Colors.white),),
                                       ],
                                     ),

                                   ),
                                 ],
                               ),

                             ],
                           ),
                         ),




                       ],


                     ),
                     SizedBox(height: 20.0,),
                     Row(
                       mainAxisSize: MainAxisSize.min,

                       children: [
                         Stack(
                           alignment: AlignmentDirectional.bottomEnd,
                           children: [
                             CircleAvatar(
                               radius: 25.0,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                             ),
                             CircleAvatar(
                               radius: 7.0,
                               backgroundColor: Colors.white,
                             ),
                             CircleAvatar(
                               radius: 6.0,
                               backgroundColor: Colors.green,
                             ),

                           ],

                         ),
                         SizedBox(width: 25.0,),
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(width: 20.0,),


                               Text('elsayed TagElden ',maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),
                               Row(
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   Expanded(
                                     child:Row(
                                       children: [

                                         Text('بيرقص بعد الضهر ',maxLines: 1,overflow: TextOverflow.ellipsis,style:TextStyle(color: Colors.white),),
                                         SizedBox(width: 15.0,),
                                         SizedBox(height: 20.0,),


                                         Container(
                                           width: 7.0,
                                           height: 7.0,
                                           decoration: BoxDecoration(color: Colors.blue,shape: BoxShape.circle),
                                         ),
                                         SizedBox(width: 15.0,),

                                         Text('08:29',style: TextStyle(color: Colors.white),),
                                       ],
                                     ),

                                   ),
                                 ],
                               ),

                             ],
                           ),
                         ),




                       ],


                     ),
                     SizedBox(height: 20.0,),
                     Row(
                       mainAxisSize: MainAxisSize.min,

                       children: [
                         Stack(
                           alignment: AlignmentDirectional.bottomEnd,
                           children: [
                             CircleAvatar(
                               radius: 25.0,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                             ),
                             CircleAvatar(
                               radius: 7.0,
                               backgroundColor: Colors.white,
                             ),
                             CircleAvatar(
                               radius: 6.0,
                               backgroundColor: Colors.green,
                             ),

                           ],

                         ),
                         SizedBox(width: 25.0,),
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(width: 20.0,),


                               Text('elsayed TagElden ',maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),
                               Row(
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   Expanded(
                                     child:Row(
                                       children: [

                                         Text('tamam ',maxLines: 1,overflow: TextOverflow.ellipsis,style:TextStyle(color: Colors.white),),
                                         SizedBox(width: 15.0,),
                                         SizedBox(height: 20.0,),


                                         Container(
                                           width: 7.0,
                                           height: 7.0,
                                           decoration: BoxDecoration(color: Colors.blue,shape: BoxShape.circle),
                                         ),
                                         SizedBox(width: 15.0,),

                                         Text('08:30',style: TextStyle(color: Colors.white),),
                                       ],
                                     ),

                                   ),
                                 ],
                               ),

                             ],
                           ),
                         ),




                       ],


                     ),
                     SizedBox(height: 20.0,),
                     Row(
                       mainAxisSize: MainAxisSize.min,

                       children: [
                         Stack(
                           alignment: AlignmentDirectional.bottomEnd,
                           children: [
                             CircleAvatar(
                               radius: 25.0,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                             ),
                             CircleAvatar(
                               radius: 7.0,
                               backgroundColor: Colors.white,
                             ),
                             CircleAvatar(
                               radius: 6.0,
                               backgroundColor: Colors.green,
                             ),

                           ],

                         ),
                         SizedBox(width: 25.0,),
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(width: 20.0,),


                               Text('elsayed TagElden ',maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),
                               Row(
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   Expanded(
                                     child:Row(
                                       children: [

                                         Text('Show Last Message',maxLines: 1,overflow: TextOverflow.ellipsis,style:TextStyle(color: Colors.white),),
                                         SizedBox(width: 15.0,),
                                         SizedBox(height: 20.0,),


                                         Container(
                                           width: 7.0,
                                           height: 7.0,
                                           decoration: BoxDecoration(color: Colors.blue,shape: BoxShape.circle),
                                         ),
                                         SizedBox(width: 15.0,),

                                         Text('08:25',style: TextStyle(color: Colors.white),),
                                       ],
                                     ),

                                   ),
                                 ],
                               ),

                             ],
                           ),
                         ),




                       ],


                     ),
                     SizedBox(height: 20.0,),
                     Row(
                       mainAxisSize: MainAxisSize.min,

                       children: [
                         Stack(
                           alignment: AlignmentDirectional.bottomEnd,
                           children: [
                             CircleAvatar(
                               radius: 25.0,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                             ),
                             CircleAvatar(
                               radius: 7.0,
                               backgroundColor: Colors.white,
                             ),
                             CircleAvatar(
                               radius: 6.0,
                               backgroundColor: Colors.green,
                             ),

                           ],

                         ),
                         SizedBox(width: 25.0,),
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(width: 20.0,),


                               Text('elsayed TagElden ',maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),
                               Row(
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   Expanded(
                                     child:Row(
                                       children: [

                                         Text('Show Last Message',maxLines: 1,overflow: TextOverflow.ellipsis,style:TextStyle(color: Colors.white),),
                                         SizedBox(width: 15.0,),
                                         SizedBox(height: 20.0,),


                                         Container(
                                           width: 7.0,
                                           height: 7.0,
                                           decoration: BoxDecoration(color: Colors.blue,shape: BoxShape.circle),
                                         ),
                                         SizedBox(width: 15.0,),

                                         Text('08:25',style: TextStyle(color: Colors.white),),
                                       ],
                                     ),

                                   ),
                                 ],
                               ),

                             ],
                           ),
                         ),




                       ],


                     ),
                     SizedBox(height: 20.0,),
                     Row(
                       mainAxisSize: MainAxisSize.min,

                       children: [
                         Stack(
                           alignment: AlignmentDirectional.bottomEnd,
                           children: [
                             CircleAvatar(
                               radius: 25.0,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                             ),
                             CircleAvatar(
                               radius: 7.0,
                               backgroundColor: Colors.white,
                             ),
                             CircleAvatar(
                               radius: 6.0,
                               backgroundColor: Colors.green,
                             ),

                           ],

                         ),
                         SizedBox(width: 25.0,),
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(width: 20.0,),


                               Text('elsayed TagElden ',maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),
                               Row(
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   Expanded(
                                     child:Row(
                                       children: [

                                         Text('Show Last Message',maxLines: 1,overflow: TextOverflow.ellipsis,style:TextStyle(color: Colors.white),),
                                         SizedBox(width: 15.0,),
                                         SizedBox(height: 20.0,),


                                         Container(
                                           width: 7.0,
                                           height: 7.0,
                                           decoration: BoxDecoration(color: Colors.blue,shape: BoxShape.circle),
                                         ),
                                         SizedBox(width: 15.0,),

                                         Text('08:25',style: TextStyle(color: Colors.white),),
                                       ],
                                     ),

                                   ),
                                 ],
                               ),

                             ],
                           ),
                         ),




                       ],


                     ),
                     SizedBox(height: 20.0,),
                     Row(
                       mainAxisSize: MainAxisSize.min,

                       children: [
                         Stack(
                           alignment: AlignmentDirectional.bottomEnd,
                           children: [
                             CircleAvatar(
                               radius: 25.0,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
                             ),
                             CircleAvatar(
                               radius: 7.0,
                               backgroundColor: Colors.white,
                             ),
                             CircleAvatar(
                               radius: 6.0,
                               backgroundColor: Colors.green,
                             ),

                           ],

                         ),
                         SizedBox(width: 25.0,),
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(width: 20.0,),


                               Text('elsayed TagElden ',maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white),),
                               Row(
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   Expanded(
                                     child:Row(
                                       children: [

                                         Text('Show Last Message',maxLines: 1,overflow: TextOverflow.ellipsis,style:TextStyle(color: Colors.white),),
                                         SizedBox(width: 15.0,),
                                         SizedBox(height: 20.0,),


                                         Container(
                                           width: 7.0,
                                           height: 7.0,
                                           decoration: BoxDecoration(color: Colors.blue,shape: BoxShape.circle),
                                         ),
                                         SizedBox(width: 15.0,),

                                         Text('08:25',style: TextStyle(color: Colors.white),),
                                       ],
                                     ),

                                   ),
                                 ],
                               ),

                             ],
                           ),
                         ),




                       ],


                     ),

                   ],
                 ),


           ),
         ),

       ],

     ),

   );
  }

}