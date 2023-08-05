// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String displayimage;
  final bool displaystatus;
  final bool displayborder;
  final double width;
  final double height;
  const AvatarWidget(
      {super.key,
      required this.displayimage,
      this.displaystatus = false,
      this.displayborder = false,
      this.width = 50,
      this.height = 50});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: displayborder ? Border.all(
          color: Colors.blueAccent,
          width: 3
        ) : Border()
      ),
        padding: const EdgeInsets.only(right: 4, left: 4),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                displayimage,
                height: height,
                width: width,
                fit: BoxFit.cover,
              ),
            ),
            displaystatus ? statusIndicator() : SizedBox()
          ],
        ));
  }

  Positioned statusIndicator() {
    return Positioned(
      bottom: 0,
      right: 5,
      child: Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
              border: Border.all(color: Colors.white, width: 1))),
    );
  }
}
