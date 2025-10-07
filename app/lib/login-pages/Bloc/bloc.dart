import 'package:flutter_bloc/flutter_bloc.dart';
import 'event.dart';
import 'state.dart';

class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc() : super(InitialState()) {
    on<InitialEvent>((event, emit) {
      // Aquí va tu lógica para manejar el evento
    });

    // Puedes agregar más eventos con sus respectivos handlers
  }
}
