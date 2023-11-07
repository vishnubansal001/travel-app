import 'package:equatable/equatable.dart';

import '../model/data_model.dart';

abstract class CubitStates extends Equatable{
}

class InitialState extends CubitStates{
  // late int x;
  @override
  List<Object> get props => [];
}

class WelcomeState extends CubitStates{
  @override
  List<Object> get props => [];
}

class LoadingState extends CubitStates{
  @override
  List<Object> get props => [];
}

class LoadedState extends CubitStates{
  LoadedState(this.places);
  final List<DataModel> places;
  @override
  List<Object> get props => [places];
}

class DetailState extends CubitStates{
  DetailState(this.place);
  final DataModel place;
  @override
  List<Object> get props => [place];
}
