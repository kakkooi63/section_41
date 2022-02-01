import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int index;

  List Showdata = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Music"),
    ),
    Center(
      child: Text("Profile"),
    ),
  ];
  @override
  void initState() {
    index = 2;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom navigation bar"),
      ),
      body: Showdata[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.queue_music), label: "music"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: "profile"),
        ],
      ),
    );
  }
}
