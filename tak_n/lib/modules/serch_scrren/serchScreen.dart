
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tak_n/layout/newsLayout/cubit/cubit.dart';
import 'package:tak_n/layout/newsLayout/cubit/states.dart';
import 'package:tak_n/shared/components/components.dart';
class SearchScreen extends StatelessWidget {
  var searchControol= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppState>(
      builder: (context ,state){
        var list = AppCubit.get(context).search;

        return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: defoultTextFormField(
                Controller: searchControol,
                Type: TextInputType.text,
                lable: 'Search ',
                hint: 'Search Item ',
                preicon: Icons.search_sharp,
                vaildate: (String value){
                  if (value.isEmpty){
                    return " search no't Allow ";
                  }
                  return null;
                },
                onChage: (value){
                  AppCubit.get(context).getSearch(value);
                },

              ),
            ),
            Expanded(child: articleBuilder(list,context,isSearch: true,)),
          ],
        ),
      );
        },
      listener: (context,state){},
    );
  }
}
