//import "package:facebook/assests.dart";
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:facebook/assests.dart";
import "package:facebook/widgets/actionbtnwidget.dart";
import "package:facebook/widgets/avatarwidget.dart";
import "package:flutter/material.dart";

class Storysestion extends StatelessWidget {
  const Storysestion(
      {super.key,});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryWidget(storyavatar: image1, strorylabel: 'Add to Story', storyimage: image1,createStoryIcon: true,),
          StoryWidget(storyavatar: image2, strorylabel: 'Saige Fuentes', storyimage: image2,createStoryIcon: false,),
          StoryWidget(storyavatar: image3, strorylabel: 'Amelie Griffith', storyimage: image3,createStoryIcon: false,),
          StoryWidget(storyavatar: image4, strorylabel: 'Leighton Kramer', storyimage: image4,createStoryIcon: false,),
          StoryWidget(storyavatar: image5, strorylabel: 'Kylan Gentry', storyimage: image5,createStoryIcon: false,),
          StoryWidget(storyavatar: image6, strorylabel: 'Bowen Higgins', storyimage: image6,createStoryIcon: false,),
          StoryWidget(storyavatar: image7, strorylabel: 'Franklin Sierra', storyimage: image7,createStoryIcon: false,),
          StoryWidget(storyavatar: image8, strorylabel: 'Marceline Avila', storyimage: image8,createStoryIcon: false,),
          StoryWidget(storyavatar: image9, strorylabel: 'Jaylen Blackwell', storyimage: image9,createStoryIcon: false,),
        ],
      ),
    );
  }
}

class StoryWidget extends StatelessWidget {
  final String storyimage;
  final String strorylabel;
  final String storyavatar;
  final bool createStoryIcon;
  const StoryWidget(
      {super.key,
      required this.storyimage,
      required this.strorylabel,
      required this.storyavatar,
      this.createStoryIcon = false
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(top: 10, bottom: 10, right: 5, left: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(storyimage), fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
              left: 5,
              top: 5,
              child:createStoryIcon ? ActionbtnWidget(
                buttonicon: Icons.add,
                iconcolor: Colors.blue,
              ): AvatarWidget(
                displayimage: storyimage,
                displayborder: true,
                )) ,
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                strorylabel,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );    
  }

}
