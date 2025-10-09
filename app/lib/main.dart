import 'package:flutter/material.dart';
import 'package:perfil/login-pages/widget/failure_widget.dart';

import 'success-pages/widget/inicio_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Failure()
    );
  }
}

