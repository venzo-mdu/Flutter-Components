import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveButton extends StatefulWidget {
   bool isActive;
   final String title;
   ActiveButton({Key? key,  this.isActive = false, required this.title}) : super(key: key);

  @override
  State<ActiveButton> createState() => _ActiveButtonState();
}

class _ActiveButtonState extends State<ActiveButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isActive = !widget.isActive;
        });
      },
      child: Container(
          decoration: widget.isActive
              ? const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xfff6cc44),
                  Color(0xffffb200),
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(6)))
              : const BoxDecoration(color: Color(0xffF5F5F5), borderRadius: BorderRadius.all(Radius.circular(7))),
          width: MediaQuery.of(context).size.width * 0.35,
          height: MediaQuery.of(context).size.height * 0.06,
          child: widget.isActive
              ? Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.04,
              ),
              SvgPicture.asset('assets/images/whiteTick.svg', height: 23, width: 23),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.04,
              ),
               Text(widget.title, style: const TextStyle(fontFamily: 'Gilroy Regular', fontSize: 14, color: Colors.black)),
            ],
          )
              :  Center(
              child: Text(widget.title, style: const TextStyle(fontFamily: 'Gilroy Regular', fontSize: 14, color: Colors.black)))),
    );
  }
}
