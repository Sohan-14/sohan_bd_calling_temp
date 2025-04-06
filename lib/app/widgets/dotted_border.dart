import 'package:flutter/material.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';

class DottedBorder extends StatelessWidget {
  final double strokeWidth;
  final double gap;
  final Color borderColor;
  final double borderRadius;
  final Widget child;

  const DottedBorder({
    super.key,
    this.strokeWidth = AppSizes.dividerHeight,
    this.gap = AppSizes.xs,
    this.borderColor = Colors.grey,
    this.borderRadius = AppSizes.borderRadiusMd,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DottedBorder(
        strokeWidth: strokeWidth,
        gap: gap,
        color: borderColor,
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}


class _DottedBorder extends CustomPainter {
  final double strokeWidth;
  final double gap;
  final Color color;
  final double borderRadius;

  _DottedBorder({
    required this.strokeWidth,
    required this.gap,
    required this.color,
    required this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final RRect rRect = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Radius.circular(borderRadius),
    );

    _drawDashedPath(canvas, rRect, paint);
  }

  void _drawDashedPath(Canvas canvas, RRect rRect, Paint paint) {
    final Path path = Path()
      ..addRRect(rRect);

    final double totalLength = path.computeMetrics().first.length;
    final double dashWidth = strokeWidth * 2;
    final double dashSpace = gap;
    double currentDistance = 0;

    while (currentDistance < totalLength) {
      canvas.drawLine(
        path.computeMetrics().first.getTangentForOffset(currentDistance)!.position,
        path.computeMetrics().first.getTangentForOffset(currentDistance + dashWidth)!.position,
        paint,
      );
      currentDistance += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
