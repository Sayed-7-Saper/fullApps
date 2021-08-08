import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:tak_n/modules/webView/webView_page.dart';
import 'package:tak_n/shared/cubit2/cubit.dart';

Widget defoultButton ({
  @required String text ,
  @required Function onpressed ,
  double width = double.infinity,
  Color color_bg = Colors.blue,
}) => Container(
  width: width,
color: color_bg,
child: MaterialButton(onPressed:onpressed,
child:Text(
text.toUpperCase(),style: TextStyle(
fontSize:30.0,color: Colors.white,
),
),
),
);
//////////
Widget defoultTextFormField({
  @required String lable,
  @required String hint,
  @required TextInputType Type,
  @required TextEditingController Controller,
  Function onSubmit,
  Function onChage,
  Function onTap,
  @required Function vaildate,
  @required IconData preicon,
  IconData suffixicon,
  bool obScureText = false,
  Function funcpass,
}) => TextFormField(
validator:vaildate,
decoration: InputDecoration(
hintText: hint ,
labelText: lable,
border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(7.0),),),
prefixIcon: Icon(preicon),
suffixIcon: suffixicon != null ? IconButton(
  icon: Icon(
      suffixicon,
  ),
  onPressed: funcpass,
): null ,
//suffixIcon: Icon(suffixicon),

),
keyboardType: Type,
controller: Controller,
  obscureText:obScureText,
onTap: onTap,
// onFieldSubmitted: ( String val){print ('Your Email : $val');},
);

/////////////////////////

Widget bulidTaskItem( Map model ,context)=> Dismissible(
  key: Key(model['id'].toString()),
  child:   Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 40.0,
          child: Text(' ${model['time']}',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,),),
        ),
        SizedBox(width: 20.0,),
        Expanded(
  
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
  
              Text(' ${model['title']} ',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,),),
  
              SizedBox(height: 10.0,),
  
              Text(' ${model['date']}  ',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.grey),),
            ],
  
          ),
  
        ),
  
        SizedBox(width: 15.0,),
  
        IconButton(icon: Icon(Icons.assignment_turned_in_sharp ), color: Colors.blueGrey,
  
            onPressed: (){
  
              AppCubit.get(context).updataData(id: model['id'], status: 'archive');
  
            }),
  
        SizedBox(width: 15.0,),
  
        IconButton(
  
            icon: Icon(Icons.check_circle ),color: Colors.green,
  
            onPressed: (){
  
              AppCubit.get(context).updataData(id: model['id'], status: 'done');
  
            }),
      ],
    ),
  ),
  onDismissed: (direction){

    AppCubit.get(context).deletData(id: model['id']);
  },
);
////////////////////////////////////////


Widget bulidArticleItem(article,context)=>InkWell(
  onTap: (){
    navigatorTo(context, WebViewScreen(article['url']));
  },
  child:   Padding(

    padding: const EdgeInsets.all(20.0),

    child: Row(

      children: [

        Container(

          width: 120.0,

          height: 120.0,

          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10.0,),

            image:DecorationImage( image: NetworkImage('${article['urlToImage'] } '),

              fit:BoxFit.cover,

            ),

          ),

        ),

        SizedBox(width: 20.0,),

        Expanded(

          child: Container(

            height: 120.0,

            child: Column(

              // mainAxisSize: MainAxisSize.min,

              mainAxisAlignment: MainAxisAlignment.start,

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Expanded(

                    child: Text

                      ('${article['title'] } ',

                      style :Theme.of(context).textTheme.bodyText1,

                      maxLines: 3,

                      overflow: TextOverflow.ellipsis,

                    )

                ),

                Text

                  ('${article['publishedAt'] } ' ,

                  style :TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.grey),overflow: TextOverflow.ellipsis,),

              ],

            ),

          ),

        ),

      ],

    ),

  ),
);

Widget articleBuilder( List list,context,{isSearch=false})=>ConditionalBuilder(
  condition: list.length > 0,
    builder: (context) =>
        ListView.separated(
            itemBuilder: (context,index)=>bulidArticleItem(list[index], context),
            separatorBuilder: (context,index)=>Container(height: 1,color: Colors.grey,),
            itemCount: 10,),
  fallback:(context)=> isSearch? Container(): Center(child: CircularProgressIndicator(),),
);

void navigatorTo(context,Widget)=>Navigator.push(
  context,
  MaterialPageRoute(builder: (context)=> Widget ,),
);