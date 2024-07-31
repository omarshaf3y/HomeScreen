import 'package:flutter/material.dart';
import 'dart:math';

class ColoredFloatingButton extends StatelessWidget {
  const ColoredFloatingButton({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          painter: MyCustomPainter(),
          child: const Icon(
            Icons.add,
            color: Colors.black,
            size: 30,
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
            ),
          ),
        ),
      ],
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;

    // Draw green section
    paint.color = Colors.green;
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2), radius: 40),
        2 * pi / 3,
        2 * pi / 3,
        false,
        paint);
    // Draw red section
    paint.color = const Color(0xff3B77FE);
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2), radius: 40),
        0,
        2 * pi / 3,
        false,
        paint);
    // Draw blue section
    paint.color = const Color(0xff283891);
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2), radius: 40),
        4 * pi / 3,
        2 * pi / 3,
        false,
        paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
