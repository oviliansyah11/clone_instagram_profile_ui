import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  StoryItem(this.title, this.picture);

  final String title;
  final String picture;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[100],
                ),
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(picture),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.grey[300],
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(title)
        ],
      ),
    );
  }
}
