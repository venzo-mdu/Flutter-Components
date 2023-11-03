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

Widget textformfieldMedium(
    {required String hint,
      required TextEditingController controller,
      required validate,
      autofillhints,
      hidden}) {
  return GestureDetector(
      child: Container(
          decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(3),
            border: Border.all(
              color:Colors.white,
            ),
          ),
          child:
          TextFormField(
            autofocus: false,
            controller: controller,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6),
                  ),
                  borderSide: BorderSide(color: Colors.white, width: 3,)),
              hintText: hint,
              hintStyle: TextStyle(
                  fontSize: 16,
                  fontFamily: "Gilroy Regular",
                  color: Colors.white
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 15,
              ),
            ),
            validator: validate,
          )

      )

  )
  ;
}
Widget StyledContainer(
    final double width,
    final double boderRadius,
    final Widget child,
    final Color color,
    ){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(boderRadius),
      border: Border.all(
        color:Color(0xffFFBE78),
      ),
      color: color,

    ),
    child: child,
    width: width,


  );

}



