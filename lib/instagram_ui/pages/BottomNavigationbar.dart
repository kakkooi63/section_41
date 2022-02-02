import 'package:flutter/material.dart';

class BottomNavigationbar extends StatelessWidget {
  const BottomNavigationbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      currentIndex: 3,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie_rounded),
          label: "Movie",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin_circle_rounded),
          label: "profile",
        ),
      ],
    );
  }
}
