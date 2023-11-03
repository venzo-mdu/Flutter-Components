import 'package:flutter/material.dart';
class ToggleSwitchWidget extends StatefulWidget {
    bool isTask1;
    bool isTask2;
    bool assigned;
   ToggleSwitchWidget({super.key,
    required this.isTask1,
    required this.isTask2,
    required this.assigned,

  });

  @override
  State<ToggleSwitchWidget> createState() => _ToggleSwitchWidgetState();
}
class _ToggleSwitchWidgetState extends State<ToggleSwitchWidget> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              widget.isTask1 = true;
              widget.isTask2 = false;
              widget.assigned = true;
            });
          },
          child: Container(
              decoration: widget.isTask1
                  ? const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff01C09B),
                      Color(0xff01A182),
                    ],
                  ),
                  borderRadius:
                  BorderRadius.all(Radius.circular(6)))
                  : const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.all(Radius.circular(6))),
              width: MediaQuery.of(context).size.width * 0.43,
              height: MediaQuery.of(context).size.height * 0.06,
              margin:
              const EdgeInsets.symmetric(horizontal: 3.0),
              child: widget.isTask1
                  ? Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context)
                        .size
                        .width *
                        0.03,
                  ),
                  const Text('Active',
                      style: TextStyle(
                          fontFamily: 'Gilroy Regular',
                          fontSize: 14,
                          color: Colors.white)),

                ],
              )
                  : Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: [
                  const Text('Active',
                      style: TextStyle(
                          fontFamily: 'Gilroy Regular',
                          fontSize: 14,
                          color: Colors.black)),
                ],
              )),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              widget.isTask2 = true;
              widget.isTask1 = false;
              widget.assigned = !widget.assigned;
            });
          },
          child: Container(
              decoration: widget.isTask2
                  ? const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff01C09B),
                      Color(0xff01A182),
                    ],
                  ),
                  borderRadius:
                  BorderRadius.all(Radius.circular(6)))
                  : const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.all(Radius.circular(6))),
              width: MediaQuery.of(context).size.width * 0.43,
              height: MediaQuery.of(context).size.height * 0.06,
              margin:
              const EdgeInsets.symmetric(horizontal: 3.0),
              child: widget.isTask2
                  ? Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context)
                        .size
                        .width *
                        0.02,
                  ),
                  const Text('Inactive',
                      style: TextStyle(
                          fontFamily: 'Gilroy Regular',
                          fontSize: 14,
                          color: Colors.white)),

                ],
              )
                  : Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: [
                  const Text('Inactive',
                      style: TextStyle(
                          fontFamily: 'Gilroy Regular',
                          fontSize: 14,
                          color: Colors.black)),

                ],
              )),
        ),
      ],
    );
  }
}
