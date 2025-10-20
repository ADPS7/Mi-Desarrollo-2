// lib/widget/carro_info_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubit/cubit.dart';
import '../Cubit/state.dart';
import '../model/infoCarro.dart';
import '../../login-pages/widget/failure_widget.dart';

class CarroInfoWidget extends StatelessWidget {
  const CarroInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, Estados>(
      builder: (context, state) {
        if (state is PageLoading) {
          return const CircularProgressIndicator(color: Colors.red);
        } else if (state is PageSuccess) {
          final Carro carro = state.carro;
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black, width: 2),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(2, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("🏎️ Marca: ${carro.marca}",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Text("🔖 Placa: ${carro.placa}",
                    style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 10),
                Text("🎨 Color: ${carro.color}",
                    style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 10),
                Text("⚡ Velocidad: ${carro.velocidad} km/h",
                    style: const TextStyle(
                        fontSize: 16, color: Colors.redAccent)),
              ],
            ),
          );
        } else {
          return const ViewError();
        }
      },
    );
  }
}
