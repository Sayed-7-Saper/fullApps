import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class listMessage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),

            ),
            SizedBox(width:20.0,),
            Text('Chats',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25.0),),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.blueGrey[750],
              foregroundColor: Colors.white,
              child: Icon
                (
                  Icons.camera_alt,
                size: 15.0,
              ),
            ),
            onPressed: null,
            // color: Colors.white,
          ),
          IconButton(icon: CircleAvatar(
              backgroundColor: Colors.blueGrey[750],
              foregroundColor: Colors.white,
              child: Icon
                (
                  Icons.edit
              )
          ),
            onPressed:null,
            //color: Colors.white,
          ),
          SizedBox(height: 20.0,),
        ],


      ),
      body:Padding(
          padding: const EdgeInsets.all(15.0),
          child:Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(20.0),
                  color: Colors.blueGrey,
                ),
                child: Row(
                  children:[
                   Icon(Icons.search_rounded),
                    SizedBox(width: 20.0,),
                    Text('Search',style: TextStyle(fontSize:17.0,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                height: 80.0,
                child: ListView.separated(itemBuilder:(context, index) => buildStoryItem() ,
                    separatorBuilder:(context, index) => SizedBox(width:10.0),
                    itemCount: 11,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height:10.0),
              Expanded(
                child: ListView.separated(
                    itemBuilder:(context,index) => buildChatItem(),
                    separatorBuilder:(context,index) => SizedBox(height: 17.0,),
                    itemCount: 15),
              ),

            ],
          ),
        ),

    );

  }

  Widget buildStoryItem() => Container(
    width: 65.0,
    child: Column(

      children: [
       // SizedBox(height:20.0,),
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/73894620?v=4'),
            ),
            CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.black,
            ),
            CircleAvatar(
              radius: 6.0,
              backgroundColor: Colors.green,
            ),


          ],
        ),
        Text('ELsayed Saper ',maxLines: 1,overflow : TextOverflow.ellipsis,style: TextStyle(color: Colors.black),),


      ],
    ),

  );
  Widget buildChatItem() =>  Row(
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
            Text('elsayed TagElden ',maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.black),),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child:Row(
                    children: [

                      Text('Show Last Message',maxLines: 1,overflow: TextOverflow.ellipsis,style:TextStyle(color: Colors.black),),
                      SizedBox(width: 15.0,),
                      SizedBox(height: 20.0,),


                      Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(color: Colors.blue,shape: BoxShape.circle),
                      ),
                      SizedBox(width: 15.0,),

                      Text('08:25',style: TextStyle(color: Colors.black),),
                    ],
                  ),

                ),
              ],
            ),

          ],
        ),
      ),




    ],


  );

}