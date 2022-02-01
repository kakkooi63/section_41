import 'package:flutter/material.dart';

class DrawerLatihan extends StatelessWidget {
  const DrawerLatihan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: (Text(
          "Drawer",
          textAlign: TextAlign.center,
        )),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: Text(
                "Dashboar Menu",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    onTap: () => print("Page Home"),
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right_outlined),
                  ),
                  ListTile(
                    onTap: () => print("Page Home"),
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right_outlined),
                  ),
                  ListTile(
                    onTap: () => print("Page Home"),
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right_outlined),
                  ),
                  ListTile(
                    onTap: () => print("Page Home"),
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right_outlined),
                  ),
                  ListTile(
                    onTap: () => print("Page Home"),
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right_outlined),
                  ),
                  ListTile(
                    onTap: () => print("Page Home"),
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right_outlined),
                  ),
                  ListTile(
                    onTap: () => print("Page Home"),
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right_outlined),
                  ),
                  ListTile(
                    onTap: () => print("Page Home"),
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right_outlined),
                  ),
                  ListTile(
                    onTap: () => print("Page Home"),
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right_outlined),
                  ),
                  ListTile(
                    onTap: () => print("Page Home"),
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right_outlined),
                  ),
                  ListTile(
                    onTap: () => print("Page Home"),
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right_outlined),
                  ),
                  ListTile(
                    onTap: () => print("Page Home"),
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right_outlined),
                  ),
                  ListTile(
                    onTap: () => print("Page Home"),
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_right_outlined),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
