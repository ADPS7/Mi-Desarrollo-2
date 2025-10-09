import 'package:flutter/material.dart';

class ViewCargando extends StatelessWidget {
  const ViewCargando({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.blue, // Cargando azul
      ),
    );
  }
}
