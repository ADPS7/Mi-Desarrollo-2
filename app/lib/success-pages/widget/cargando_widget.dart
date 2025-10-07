import 'package:flutter/material.dart';

class Cargando extends StatelessWidget {
  const Cargando({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.blue, // Cargando azul
      ),
    );
  }
}
