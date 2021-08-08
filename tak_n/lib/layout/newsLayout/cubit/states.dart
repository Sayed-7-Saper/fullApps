abstract class AppState {}
class InitialState extends AppState{}
class ChangeBottomNavBarState extends AppState{}
class NewLoadingBusinessState extends AppState{}
class NewGetBusinessSuccessState extends AppState{}
class NewGetBusinessErrorState extends AppState{
  final String error;
  NewGetBusinessErrorState(this.error);
}


class NewLoadingSportState extends AppState{}
class NewGetSportSucessState extends AppState{}
class NewGetSportErrorState extends AppState{
  final String error;
  NewGetSportErrorState(this.error);
}


class NewLoadingSienceState extends AppState{}
class NewGetSienceSuccessState extends AppState{}
class NewGetSienceErrorState extends AppState{
  final String error;
  NewGetSienceErrorState(this.error);
}

class AppChangeModeState extends AppState{}

class NewLoadingSearchState extends AppState{}
class NewGetSearchSucessState extends AppState{}
class NewGetSearchErrorState extends AppState{
  final String error;
  NewGetSearchErrorState(this.error);
}