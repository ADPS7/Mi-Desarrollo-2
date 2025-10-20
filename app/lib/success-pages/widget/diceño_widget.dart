
import 'package:flutter/material.dart';

class Background1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderLoginPainter(),
      ),
    );
  }
}

class _HeaderLoginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // --- PRIMERA CAPA (Rojo oscuro) ---
    final paint1 = Paint()..color = Color(0xFFD32F2F); // rojo fuerte
    final path1 = Path();
    path1.lineTo(0, size.height * 0.55);
    path1.quadraticBezierTo(size.width * 0.25, size.height * 0.65,
        size.width * 0.5, size.height * 0.55);
    path1.quadraticBezierTo(size.width * 0.75, size.height * 0.45,
        size.width, size.height * 0.55);
    path1.lineTo(size.width, 0);
    path1.close();

    canvas.drawPath(path1, paint1);

    // --- SEGUNDA CAPA (Rojo anaranjado) ---
    final paint2 = Paint()..color = Color(0xFFFF7043).withOpacity(0.85);
    final path2 = Path();
    path2.lineTo(0, size.height * 0.65);
    path2.quadraticBezierTo(size.width * 0.25, size.height * 0.75,
        size.width * 0.5, size.height * 0.65);
    path2.quadraticBezierTo(size.width * 0.75, size.height * 0.55,
        size.width, size.height * 0.65);
    path2.lineTo(size.width, 0);
    path2.close();

    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
