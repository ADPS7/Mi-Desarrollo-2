import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Inicie secion'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: null, // Puedes cambiarlo por una función
              child: Text('Iniciar'),
            ),
          ],
        ),
      ),
    );
  }
}
