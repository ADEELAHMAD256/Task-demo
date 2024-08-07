import 'package:flutter/cupertino.dart';
import '../../../const/colors.dart';

class GradientBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final Radius radius = Radius.circular(size.width / 2);

    final Paint paint = Paint()
      ..shader = const LinearGradient(
        // stops: [0.2, 1],
        colors: [k3263B0, k3CFEDE],
        begin: Alignment.topLeft,
        end: Alignment.centerRight,
      ).createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    canvas.drawRRect(RRect.fromRectAndRadius(rect, radius), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
