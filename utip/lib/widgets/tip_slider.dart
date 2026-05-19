import 'package:flutter/material.dart';

class TipSlider extends StatelessWidget {
  const TipSlider({
    super.key,
    required this.tipPercent, required this.onChanged,
  });

  final double tipPercent;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: tipPercent.toDouble(),
      min: 0,
      max: 100,
      divisions: 10,
      // label: '$tipPercent %',
      onChanged: onChanged
    );
  }
}
