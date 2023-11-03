import 'package:flutter/material.dart';
class IncreDecreContainer extends StatefulWidget {
   int count;
   IncreDecreContainer({Key? key, this.count = 0,}) : super(key: key);

  @override
  State<IncreDecreContainer> createState() => _IncreDecreContainerState();
}

class _IncreDecreContainerState extends State<IncreDecreContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      color:const Color(0xffFAFAFA),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Container(
              height: 52,
              width: 52,
              decoration: BoxDecoration(
                  color: const Color(0xfff6cc44),
                  borderRadius: BorderRadius.circular(6.0)
              ),
              child:GestureDetector(
                onTap: (){
                  setState(() {
                    widget.count = widget.count + 1;
                  });
                },
                  child: const Icon(Icons.add)),
            ),
            Text(widget.count.toString(),style: const TextStyle(color: Colors.black),),
            Container(
              height: 50,
              width: 52,
              decoration: BoxDecoration(
                  color: const Color(0xfff6cc44),
                  borderRadius: BorderRadius.circular(6.0)
              ),
              child:GestureDetector(
                  onTap: (){
                    setState(() {
                      widget.count = widget.count - 1;
                    });
                  },
                  child: const Icon(Icons.remove)),
            ),
          ]
      ),
    );
  }
}
