
import 'package:flutter/material.dart';

Widget buttonMedium(
    String value,
    final double fontsize,
    final Color color,
    final String? fontfamily,
    final Function()? onpressed,
    ) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
    ),
    onPressed: onpressed,
    child: Text(
      value,
      style: TextStyle(fontSize: fontsize,color: color,fontFamily: fontfamily),
    ),
  );
}
