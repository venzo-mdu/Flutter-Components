import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;
  final Color? activeColor;
  final Color? inactiveColor;
  final String? label;
  final Color? secondaryActiveColor;

  const CustomSlider({
    super.key,
    this.activeColor,
    this.max = 1.0,
    required this.onChanged,
    required this.value,
    this.min = 0.0,
    this.inactiveColor,
    this.label,
    this.secondaryActiveColor,
  });

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {

  @override
  Widget build(BuildContext context) {
    return  Slider(
      secondaryActiveColor:widget.secondaryActiveColor,
      value: widget.value,
      max: widget.max,
      onChanged: widget.onChanged,
      label: widget.label,
      inactiveColor :widget.inactiveColor,
      activeColor: widget.activeColor,
    );
  }
}

