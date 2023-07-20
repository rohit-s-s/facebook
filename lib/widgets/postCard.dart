// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:facebook/sections/footerbuttonSection.dart';
import 'package:facebook/widgets/avatarwidget.dart';
import 'package:facebook/widgets/verificationicon.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String postimage;
  final String avatar;
  final String publishedAt;
  final String profilename;
  final String posttitle;
  final bool showBlueTick;
  final String likecount;
  final String sharecount;
  final String commentcount;
  const PostCard(
      {super.key,
      required this.posttitle,
      required this.avatar,
      required this.profilename,
      required this.postimage,
      this.showBlueTick = false,
      required this.likecount,
      required this.sharecount,
      required this.commentcount, required this.publishedAt});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          FooterButton()
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                  size: 10,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              displaytext(label: likecount),
            ],
          ),
          Container(
            child: Row(
              children: [
                displaytext(label: sharecount),
                SizedBox(
                  width: 5,
                ),
                displaytext(label: 'Comments'),
                SizedBox(
                  width: 10,
                ),
                displaytext(label: commentcount),
                SizedBox(
                  width: 5,
                ),
                displaytext(label: 'Shares'),
                SizedBox(
                  width: 10,
                ),
                AvatarWidget(
                  displayimage: avatar,
                  displaystatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[700],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postimage),
    );
  }

  Widget titleSection() {
    return posttitle != ""
        ? Container(
          padding: EdgeInsets.only(
            right: 10,
            left: 10,
            bottom: 5
          ),
            child: Text(
              posttitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        : SizedBox();
  }

// code for post card header
  ListTile postCardHeader() {
    return ListTile(
      leading: AvatarWidget(
        displayimage: avatar,
        displaystatus: false,
      ),
      title: Row(
        children: [
          Text(
            profilename,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? VerificationIcon() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}

Widget displaytext({required String label}) {
  return Text(
    label,
    style: TextStyle(
      color: Colors.grey[700],
    ),
  );
}
