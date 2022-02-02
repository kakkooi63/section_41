import 'package:flutter/material.dart';

import 'BottomNavigationbar.dart';
import 'Galeri.dart';
import 'ItemPost.dart';
import 'ProfilePict.dart';
import 'Story_Item.dart';
import 'Tabitem.dart';

class ProfileIg extends StatelessWidget {
  const ProfileIg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            Text(
              "Kakkooi",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Icon(Icons.arrow_drop_down_outlined, color: Colors.black),
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
                ProfilePict(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ItemPost("999", "Posts"),
                      ItemPost("888", "Followers"),
                      ItemPost("777", "Following"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Kakkooi",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum imperdiet venenatis urna",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: " #Hastag",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Links Goes Here",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlineButton(
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Story_Item("Story 1"),
                  Story_Item("Story 2"),
                  Story_Item("Story 3"),
                  Story_Item("Story 4"),
                  Story_Item("Story 5"),
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
              Tabitem(true, Icons.grid_on_outlined),
              Tabitem(false, Icons.person_pin_rounded),
            ],
          ),
          Galeri()
        ],
      ),
      bottomNavigationBar: BottomNavigationbar(),
    );
  }
}
