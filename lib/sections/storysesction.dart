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
          StoryWidget(storyavatar: ariana, strorylabel: 'Add to Story', storyimage: ariana,createStoryIcon: true,),
          StoryWidget(storyavatar: emma, strorylabel: 'Emma Watson', storyimage: emma,createStoryIcon: false,),
          StoryWidget(storyavatar: oslen, strorylabel: 'Elisebeth Oslen', storyimage: oslen,createStoryIcon: false,),
          StoryWidget(storyavatar: haile, strorylabel: 'Haile Staifield', storyimage: haile,createStoryIcon: false,),
          StoryWidget(storyavatar: paxton, strorylabel: 'Sara Paxton', storyimage: paxton,createStoryIcon: false,),
          StoryWidget(storyavatar: emma, strorylabel: 'Emma Watson', storyimage: emma,createStoryIcon: false,),
          StoryWidget(storyavatar: oslen, strorylabel: 'Elisebeth Oslen', storyimage: oslen,createStoryIcon: false,),
          StoryWidget(storyavatar: haile, strorylabel: 'Haile Staifield', storyimage: haile,createStoryIcon: false,),
          StoryWidget(storyavatar: paxton, strorylabel: 'Sara Paxton', storyimage: paxton,createStoryIcon: false,),
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
