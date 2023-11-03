import 'package:flutter/material.dart';
class CustomContainer extends StatefulWidget {
  final String text;
  final Image containerImage;

  const CustomContainer({
    super.key,
     required this.text, required this.containerImage,
  });

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .050,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff01B795),
                              Color(0xff018F73),
                            ],
                          ),
                        ),
                        child:
                        widget.containerImage,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .036,
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.text,
                            style: const TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Gilroy Medium'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Get.to(() => const ReferYourFriend(),
                          //     transition: Transition.rightToLeftWithFade, duration: const Duration(milliseconds: 500));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xffF5CF43),
                                Color(0xffFDC04A),
                              ],
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
