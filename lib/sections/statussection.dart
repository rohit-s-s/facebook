// ignore_for_file: prefer_const_constructors

import 'package:facebook/assests.dart';
import 'package:facebook/widgets/avatarwidget.dart';
import 'package:flutter/material.dart';


class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AvatarWidget(displayimage: ariana,),
      title: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          hintText: "What's on your mind?",
          hintStyle: TextStyle(color: Colors.black,fontSize: 18)
        ),
        
      ),
    );
  }
}

