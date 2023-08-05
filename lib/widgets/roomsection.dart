// ignore_for_file: prefer_const_constructors

import 'package:facebook/assests.dart';
import 'package:facebook/widgets/avatarwidget.dart';
import 'package:flutter/material.dart';

class RoomsectionWidget extends StatelessWidget {
  const RoomsectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 70,
      child: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 4, left: 4),
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                shape: StadiumBorder(),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.video_call,
                  color: Colors.purple,
                ),
                label: Text("Create \nRoom")),
          ),
          AvatarWidget(
            displayimage: image1,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: image2,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: image3,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: image4,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: image5,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: image6,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: image7,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: image8,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: image9,
            displaystatus: true,
          ),
        ],
      ),
    );
  }
}
