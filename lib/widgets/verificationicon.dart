// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class VerificationIcon extends StatelessWidget {
  const VerificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,

      ),
      child: Icon(Icons.check,color: Colors.white,size: 10,),
    );
  }
}