import 'package:equatable/equatable.dart';

import '../model/infoCarro.dart';


sealed class Estados extends Equatable {
  Estados();
  
  @override
  List<Object> get props => [];
}

class PageInitial extends Estados{}
class PageLoading extends Estados{}
class PageSuccess extends Estados{
  final Carro carro;
  PageSuccess(this.carro);
}
class PageFailure extends Estados{}
