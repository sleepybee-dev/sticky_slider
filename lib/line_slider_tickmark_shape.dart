import 'package:flutter/material.dart';

class LineSliderTickMarkShape extends SliderTickMarkShape {
  const LineSliderTickMarkShape({
    this.lineWidth = 2,
    this.lineHeight,
  });

  final double lineWidth;
  final double? lineHeight;

  @override
  Size getPreferredSize({
    required SliderThemeData sliderTheme,
    required bool isEnabled,
  }) {
    assert(sliderTheme.trackHeight != null);

    return Size(lineWidth, lineHeight ?? sliderTheme.trackHeight!);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    required bool isEnabled,
  }) {
    Color? begin;
    Color? end;
    switch (textDirection) {
      case TextDirection.ltr:
        final bool isTickMarkRightOfThumb = center.dx > thumbCenter.dx;
        begin = isTickMarkRightOfThumb
            ? sliderTheme.disabledInactiveTickMarkColor
            : sliderTheme.disabledActiveTickMarkColor;
        end = isTickMarkRightOfThumb
            ? sliderTheme.inactiveTickMarkColor
            : sliderTheme.activeTickMarkColor;
        break;
      case TextDirection.rtl:
        final bool isTickMarkLeftOfThumb = center.dx < thumbCenter.dx;
        begin = isTickMarkLeftOfThumb
            ? sliderTheme.disabledInactiveTickMarkColor
            : sliderTheme.disabledActiveTickMarkColor;
        end = isTickMarkLeftOfThumb
            ? sliderTheme.inactiveTickMarkColor
            : sliderTheme.activeTickMarkColor;
        break;
    }
    final Paint paint = Paint()
      ..color = ColorTween(begin: begin, end: end).evaluate(enableAnimation)!
      ..strokeWidth = lineWidth;

    double halfHeight = (lineHeight ?? sliderTheme.trackHeight ?? 5.0) / 2.0;
    context.canvas.drawLine(Offset(center.dx, center.dy - halfHeight),
        Offset(center.dx, center.dy + halfHeight), paint);
  }
}
