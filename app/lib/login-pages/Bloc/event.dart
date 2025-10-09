import 'package:equatable/equatable.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

final class HomeSearchPressed extends HomeEvent {
  final String user;
  final String pass;

  const HomeSearchPressed(this.user, this.pass);

  @override
  List<Object> get props => [user, pass];
}
