import 'package:flutter/material.dart';

class BottomSet extends StatelessWidget {
  const BottomSet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Set"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isDismissible: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                context: context,
                builder: (context) => SizedBox(
                  height: 300,
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(Icons.photo),
                        title: Text("Photo"),
                        onTap: () {
                          return print("Klik Photo");
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.music_note_rounded),
                        title: Text("Music"),
                        onTap: () {
                          return print("Klik Music");
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.video_call_rounded),
                        title: Text("Video"),
                        onTap: () {
                          return print("Klik Video");
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.share_rounded),
                        title: Text("Share"),
                        onTap: () {
                          return print("Klik Share");
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.cancel_outlined),
                        title: Text("Cancel"),
                        onTap: () {
                          return Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Text("Show Bottom Sheet"),
          ),
        ),
      ),
    );
  }
}
