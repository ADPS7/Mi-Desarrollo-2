import 'package:equatable/equatable.dart';

sealed class HomeState extends Equatable {
  const HomeState();
  
  @override
  List<Object?> get props => [];
}

class Initial extends HomeState{}
class Cargando extends HomeState{}
class Correcto extends HomeState{}
class Error extends HomeState{}

