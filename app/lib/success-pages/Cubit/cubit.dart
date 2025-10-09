import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import '../model/infoCarro.dart';
import 'state.dart';

class PageCubit extends Cubit<Estados> {
  PageCubit() : super(PageInitial());

  void cargarCarro() async {
    emit(PageLoading());

    final dio = Dio();
    final url = "https://raw.githubusercontent.com/MarkusGutierrez10/json/refs/heads/main/angel.json";

    try {
      final response = await dio.get(url);
      await Future.delayed(const Duration(seconds: 7));

      if (response.statusCode == 200) {
        final Map<String, dynamic> objectMap = jsonDecode(response.data);
        final carro = Carro(objectMap);
        emit(PageSuccess(carro));
      } else {
        emit(PageFailure());
      }
    } catch (e) {
      emit(PageFailure());
    }
  }
}
