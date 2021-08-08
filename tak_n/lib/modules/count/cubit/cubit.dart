import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tak_n/modules/count/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates>
{
   // CounterCubit(CounterStates initialState) : super(initialState);
  CounterCubit(): super(CounterInitialState());

 // CounterCubit c = BlocProvider.of(context);

  // you need creat object inside class to used object in any place project
// made func type static tack context and return object from me

static CounterCubit get(context) => BlocProvider.of(context);
  int countUser=1;
void maius(){
countUser--;
emit(CounterMaiusState(countUser));
}
void plus(){
  countUser++ ;
  emit(CounterPlusState(countUser));
}
}