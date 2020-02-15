import 'package:flutter/material.dart';

class CustomBGPainter extends CustomPainter{

  final Color bgColor;
  final double curveHeight;

  CustomBGPainter({
    this.bgColor,
    this.curveHeight
  });

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = curveHeight;

    Paint paint = Paint();

    Path mainBackground = Path();

    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = bgColor;
    canvas.drawPath(mainBackground, paint);

    Path ovalPath = Path();
    ovalPath.moveTo(0, height);
    ovalPath.quadraticBezierTo(width * 0.50, height + 50, width, height);

    paint.color = bgColor;
    canvas.drawPath(ovalPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}