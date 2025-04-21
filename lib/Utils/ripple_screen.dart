import 'package:flutter/material.dart';

class RipplePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = const Color(0xFF00BFFF).withOpacity(0.2)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final center = Offset(size.width / 2, size.height / 2);
    final radii = [100.0, 150.0, 200.0, 250.0];

    for (var radius in radii) {
      paint.color =
          paint.color.withOpacity(1 - radius / 300); // fade outer circles
      canvas.drawCircle(center, radius, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
