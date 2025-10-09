import 'package:flutter/material.dart';
import 'login-pages/pages/pages_formulario.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViewLogin(),
    );
  }
}
