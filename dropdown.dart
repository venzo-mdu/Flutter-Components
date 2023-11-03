import 'package:flutter/material.dart';
class DropDownWidget extends StatefulWidget {
  final double? width;
  final Widget? trailingIcon;
  final initialSelection;
  final ValueChanged<String?>? onSelected;
  final List<DropdownMenuEntry<String>> dropdownMenuEntries;
  final InputDecorationTheme? inputDecorationTheme;
  final String? hintText;
  final TextStyle? textStyle;





  // const samleCode({super.key, this.width, this.trailingIcon, this.initialSelection, this.onSelected, required this.dropdownMenuEntries,});
  const DropDownWidget({
    Key? key,
      required this.width,
     required this.trailingIcon,
     required this.initialSelection ,
    required this.onSelected,
    required this.dropdownMenuEntries,
    required this.inputDecorationTheme,
    required this.hintText,
    required this.textStyle,

  }) : super(key: key);


  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
String accountValue = '';
bool accountarrow = false;



  @override
  Widget build(BuildContext context) {

    return  DropdownMenu<String>(
      dropdownMenuEntries: widget.dropdownMenuEntries,
      onSelected: widget.onSelected,
      width: widget.width,
      trailingIcon: widget.trailingIcon,
      initialSelection: widget.initialSelection,
      hintText: widget.hintText,
      textStyle: widget.textStyle,


    );
  }
}
