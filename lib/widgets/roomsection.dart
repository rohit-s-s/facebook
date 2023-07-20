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
            displayimage: ariana,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: haile,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: emma,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: paxton,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: oslen,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: alba,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: haile,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: emma,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: paxton,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: oslen,
            displaystatus: true,
          ),
          AvatarWidget(
            displayimage: alba,
            displaystatus: true,
          ),
        ],
      ),
    );
  }
}
