import 'package:flutter/material.dart';

void CustomSnackbar(BuildContext context,String message) {
    SnackBar snackBar = SnackBar(
      backgroundColor: const Color(0xffbb86fc),
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
