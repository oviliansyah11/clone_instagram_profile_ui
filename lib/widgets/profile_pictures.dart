import 'package:flutter/material.dart';

class ProfilePictures extends StatelessWidget {
  const ProfilePictures({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.red,
                Colors.amber,
              ],
            ),
          ),
        ),
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://pbs.twimg.com/profile_images/1517913922296487938/HN1Oo8M__400x400.jpg"),
            ),
            borderRadius: BorderRadius.circular(60),
            color: Colors.grey[100],
            border: Border.all(
              color: Colors.white,
              width: 5,
            ),
          ),
        ),
      ],
    );
  }
}
