import 'package:flutter/material.dart';

Widget textSemiBold(
  String value,
) {
  return Text(
    value,
    style: const TextStyle(
      fontSize: 24.0,
      fontFamily: 'Gilroy SemiBold',
      height: 1.6,
      color: Colors.white,
    ),
    textAlign: TextAlign.center,
  );
}

Widget textMedium(
  String value,
    final double fontsize,
    final Color color,
    final String? fontfamily,
) {
  return Text(
    value,
    style: TextStyle(fontSize: fontsize,color: color,fontFamily: fontfamily),
    textAlign: TextAlign.center,
  );
}

Widget textformfieldMedium() {
  return TextFormField(
    cursorColor: Colors.white,
    decoration: const InputDecoration(

        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6),
            ),

            borderSide: BorderSide(color: Colors.white, width: 3,))),
  );
}






