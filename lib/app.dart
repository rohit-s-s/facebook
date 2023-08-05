// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:facebook/assests.dart";
import 'package:facebook/sections/headerbuttonSection.dart';
import "package:facebook/sections/statussection.dart";
import "package:facebook/sections/storysesction.dart";
import "package:facebook/widgets/actionbtnwidget.dart";
import "package:facebook/widgets/postCard.dart";
import "package:facebook/widgets/roomsection.dart";
import "package:flutter/material.dart";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Facebook",
        home: SafeArea(
            child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(
              "facebook",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            actions: [
              ActionbtnWidget(
                buttonicon: Icons.search,
              ),
              ActionbtnWidget(
                buttonicon: Icons.message,
              )
            ],
          ),
          body: ListView(
            children: [
              StatusSection(),
              dividerMethord(1),
              HeaderButton(),
              dividerMethord(10),
              RoomsectionWidget(),
              Storysestion(),
              dividerMethord(10),
              PostCard(
                avatar: emma,
                publishedAt: '5 hrs ago',
                profilename: "Saige Fuentes",
                posttitle: "Great things in business are never done by one person. They're done by a team of people",
                postimage: emma,
                showBlueTick: true,
                likecount: "10K",
                sharecount: '1K',
                commentcount: '500',
              ),
              dividerMethord(10),
              PostCard(
                posttitle: "",
                publishedAt: '10 days ago',
                avatar: alba,
                profilename: "Amelie Griffith",
                postimage: alba,
                likecount: '20K',
                sharecount: '2K',
                commentcount: '600',
                showBlueTick: true,
              ),
              PostCard(
                avatar: haile,
                publishedAt: '1 week',
                profilename: "Leighton Kramer",
                posttitle: "I don't believe that if you do good, good things will happen",
                postimage: haile,
                showBlueTick: true,
                likecount: "10K",
                sharecount: '1K',
                commentcount: '500',
              ),
              dividerMethord(10),
              PostCard(
                avatar: paxton,
                publishedAt: 'Nov 10',
                profilename: "Kylan Gentry",
                posttitle: 'Together we can change the world, just one random act of kindness at a time',
                postimage: paxton,
                showBlueTick: true,
                likecount: "10K",
                sharecount: '1K',
                commentcount: '500',
              ),
              dividerMethord(10),
              PostCard(
                avatar: oslen,
                publishedAt: 'Nov 10',
                profilename: "Bowen Higgins",
                posttitle: 'Everything happening around me is very random. I am enjoying the phase, as the journey is far more enjoyable than the destination',
                postimage: oslen,
                showBlueTick: true,
                likecount: "10K",
                sharecount: '1K',
                commentcount: '500',
              ),
            ],
          ),
        )));
  }

  Divider dividerMethord(double thick) {
    return Divider(
      thickness: thick,
      color: Colors.grey[400],
    );
  }
}
