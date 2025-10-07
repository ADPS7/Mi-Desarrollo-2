import 'package:equatable/equatable.dart';

import '../model/infoCarro.dart';

class MyState extends Equatable {
  MyState();

  @override
  List<Object> get props => [];
}

class IniciarState extends MyState {}

class CargandoState extends MyState {}

class SuccessState extends MyState {
  final Carro carro;
  SuccessState(this.carro);
}

class ErrorState extends MyState {}
