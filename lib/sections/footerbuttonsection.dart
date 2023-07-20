// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  const FooterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
       HeaderWidget(buttonicon: Icons.thumb_up_alt_outlined,buttontext: "Like",),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey,
          ),
          HeaderWidget(
            buttonicon: Icons.message_outlined,
            buttontext: 'Comment',
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey,
          ),
          HeaderWidget(
            buttonicon: Icons.share_outlined,
            buttontext: "Share",
          ),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  final String buttontext;
  final IconData buttonicon;
  const HeaderWidget(
      {super.key,
      required this.buttonicon,
      required this.buttontext});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return TextButton.icon(
        onPressed: () {},
        icon: Icon(
          buttonicon,
          color: Colors.grey[700],
        ),
        label: Text(
          buttontext,
          style: TextStyle(color: Colors.black,fontSize: 15),
        )); 
     
  }
}
