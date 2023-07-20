// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  const HeaderButton({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          HeaderWidget(
            buttoncolor: Colors.red,
            buttonicon: Icons.video_call,
            buttontext: "Live",
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey,
          ),
          HeaderWidget(
            buttoncolor: Colors.green,
            buttonicon: Icons.photo_library,
            buttontext: "Photo",
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey,
          ),
          HeaderWidget(
            buttoncolor: Colors.purple,
            buttonicon: Icons.video_call,
            buttontext: "Room",
          ),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  final IconData buttonicon;
  final Color buttoncolor;
  final String buttontext;
  const HeaderWidget(
      {super.key,
      required this.buttoncolor,
      required this.buttonicon,
      required this.buttontext});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        icon: Icon(
          buttonicon,
          color: buttoncolor,
        ),
        label: Text(
          buttontext,
          style: TextStyle(color: Colors.black,fontSize: 15),
        ));
  }
}
