// lib/pages/home.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubit/cubit.dart';
import '../widget/diceño_widget.dart';
import '../widget/exito_widget.dart'; // ✅ Importa el nuevo widget

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PageCubit()..cargarCarro(),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              // Fondo (ocupa todo)
              Positioned.fill(
                child: Background1(),
              ),

              // Contenido encima del fondo
              Center(
                child: SingleChildScrollView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 160,
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage("assets/carro.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const CarroInfoWidget(), // ✅ Widget separado
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
