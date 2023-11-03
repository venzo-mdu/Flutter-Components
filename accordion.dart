import 'package:flutter/material.dart';

class CustomAccordion extends StatefulWidget {
  final String title;
  final String content;
  final Color titleColor;
  final Color contentColor;
  bool isExpand;
   CustomAccordion({
    super.key,
    required this.title,
    this.isExpand = false,
    required this.content, required this.titleColor, required this.contentColor,
  });
  @override
  State<CustomAccordion> createState() => _CustomAccordionState();
}

class _CustomAccordionState extends State<CustomAccordion> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 60,
          color: widget.titleColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(widget.title),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.isExpand = !widget.isExpand;
                    });
                  },
                  child: widget.isExpand ? Icon(Icons.expand_less) : Icon(Icons.expand_more),
                )
              ],
            ),
          ),
        ),

        widget.isExpand
            ?  Column(
          children: [
            Container(
              color: widget.contentColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                child: Column(
                  children: [
                    Text(widget.content,style: const TextStyle(color: Colors.green),),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .2,
                            height: MediaQuery.of(context).size.height * .036,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(side: BorderSide(color: widget.titleColor, width: 1)),
                              onPressed: () {},
                              child:  Text(
                                'Reject',
                                style: TextStyle(fontSize: 12, fontFamily: 'Gilroy Regular', color: widget.titleColor),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .03,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width * .2,
                            height: MediaQuery.of(context).size.height * .036,
                            decoration:  BoxDecoration(
                                border: const Border(),
                                color: widget.titleColor,
                                borderRadius: const BorderRadius.all(Radius.circular(4))),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    'Accept',
                                    style: TextStyle(fontSize: 12, fontFamily: 'Gilroy Medium', color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ) : Container(),
      ],
    );
  }
}
