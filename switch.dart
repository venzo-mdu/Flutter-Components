import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final Color? activeColor;

  const CustomSwitch({
    Key? key, // Add the missing key parameter
    required this.onChanged,
    required this.value,
    this.activeColor,
  }) : super(key: key);

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: widget.activeColor,
      value: widget.value,
      onChanged: widget.onChanged
    );
  }
}
