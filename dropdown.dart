import 'package:flutter/material.dart';
class CommonDropdown<T> extends StatefulWidget
{
  final List<T> items;
  final T? value;
  final String Function(T?) itemToString;
  final void Function(T?) onChanged;
  CommonDropdown({super.key,
    required this.items,
    required this.value,
    required this.itemToString,
    required this.onChanged,
  });
  @override
  _CommonDropdownState<T> createState() => _CommonDropdownState<T>();
}
class _CommonDropdownState<T> extends State<CommonDropdown<T>>
{
  @override
  Widget build(BuildContext context)
  {
    return DropdownButton<T>(
      value: widget.value,
      items: widget.items
          .map(
            (item) => DropdownMenuItem<T>(
              value: item,
              child: Text(widget.itemToString(item)),
            ),
      )
          .toList(),
      onChanged: widget.onChanged,
    );
  }
}
