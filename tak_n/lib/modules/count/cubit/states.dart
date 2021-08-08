
abstract class CounterStates{}

class CounterInitialState extends CounterStates{}


class CounterMaiusState extends CounterStates{
   final int countUser;
  CounterMaiusState(this.countUser);
}
class CounterPlusState extends CounterStates{
 final int countUser;
  CounterPlusState(this.countUser);
}