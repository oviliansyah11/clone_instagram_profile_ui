import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/info_items.dart';
import 'package:instagram_ui/widgets/profile_pictures.dart';
import 'package:instagram_ui/widgets/story_item.dart';
import 'package:instagram_ui/widgets/tab_items.dart';

class ProfilePages extends StatelessWidget {
  const ProfilePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(
              Icons.lock_outline,
              color: Colors.black,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "oviliansyah11",
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ProfilePictures(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItems("Posts", "9"),
                      InfoItems("Followers", "239"),
                      InfoItems("Following", "399"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Ovi Liansyah",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                text:
                    "If you use this site regularly and would like to help keep the site on the Internet, please consider donating a small sum to help pay for the hosting and bandwidth bill",
                children: [
                  TextSpan(
                    text: "#hastag",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              child: Text('Edit Profile'),
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                textStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("Dubai", "https://picsum.photos/536/354"),
                  StoryItem(
                      "Japan", "https://picsum.photos/seed/picsum/536/354"),
                  StoryItem(
                      "Jogja", "https://picsum.photos/id/1060/536/354?blur=2"),
                  StoryItem("Banyuwangi",
                      "https://randomwordgenerator.com/img/picture-generator/53e3d74b4c5baf14f1dc8460962e33791c3ad6e04e507440762e7ad39048c4_640.jpg"),
                  StoryItem("Wonosobo",
                      "https://randompicturegenerator.com/img/national-park-generator/g088288e88cfbfe923c5cdd9f0112c0a773427f9aed044d5be3a9e709dc4f6197d118526a69c1dd6188ca94da2408f4cc_640.jpg"),
                  StoryItem("Lawu",
                      "https://randompicturegenerator.com/img/national-park-generator/g18290695519504278647b9eb546cdeff0bd9ab0e26638bcd47fff20e657188abe9fab9a699780d4eddb8bf172f935f01_640.jpg"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(Icons.grid_on_outlined, true),
              TabItem(Icons.video_library, false),
              TabItem(Icons.person_pin_outlined, false),
            ],
          ),
          SizedBox(height: 3),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 3,
              mainAxisSpacing: 3,
            ),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/id/${index + 350}/536/354",
              fit: BoxFit.cover,
            ),
            itemCount: 27,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_outlined), label: "Filter"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
