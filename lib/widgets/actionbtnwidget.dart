import 'package:flutter/material.dart';

class ActionbtnWidget extends StatelessWidget {
  final IconData buttonicon;
  final Color iconcolor;
  const ActionbtnWidget({super.key, required this.buttonicon, this.iconcolor=Colors.black});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300,
      ),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            buttonicon,
            color: iconcolor,
            size: 25,
          )),
    );
  }
}
