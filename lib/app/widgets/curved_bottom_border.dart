import 'package:flutter/material.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';

class CurvedBottomBorder extends StatelessWidget {
  final Widget child;
  final Color color;
  final double borderWidth;
  final double radius;

  const CurvedBottomBorder({
    super.key,
    required this.child,
    required this.color,
    this.borderWidth = AppSizes.dividerXl,
    this.radius = AppSizes.borderRadiusXs,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _CurvedBottomBorderPainter(
        color: color,
        borderWidth: borderWidth,
        radius: radius,
      ),
      child: child,
    );
  }
}

class _CurvedBottomBorderPainter extends CustomPainter {
  final Color color;
  final double borderWidth;
  final double radius;

  _CurvedBottomBorderPainter({
    required this.color,
    required this.borderWidth,
    required this.radius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = borderWidth
      ..style = PaintingStyle.stroke;

    final Path path = Path();
    path.moveTo(0, size.height - radius);
    path.quadraticBezierTo(radius * 0.1, size.height, radius, size.height);
    path.lineTo(size.width - radius, size.height);
    path.quadraticBezierTo(size.width - radius * 0.1, size.height, size.width, size.height - radius);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}