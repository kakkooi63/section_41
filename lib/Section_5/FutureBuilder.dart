import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class vutur extends StatefulWidget {
  vutur({Key? key}) : super(key: key);

  @override
  State<vutur> createState() => _vuturState();
}

class _vuturState extends State<vutur> {
  List<Map<String, dynamic>> alluser = [];

  Future getalluser() async {
    try {
      var response =
          await myhttp.get(Uri.parse("https://reqres.in/api/users?page=3"));
      List data = (json.decode(response.body) as Map<String, dynamic>)["data"];
      data.forEach((element) {
        alluser.add(element);
      });
      print(alluser);
    } catch (e) {
      print("terjadi kesalahan");
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Future Builder"),
        ),
        body: FutureBuilder(
            future: getalluser(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text("Loading...."),
                );
              } else {
                if (alluser.length == 0) {
                  return Center(
                    child: Text("Tidak ada data"),
                  );
                }
                return ListView.builder(
                  itemCount: alluser.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(alluser[index]['avatar']),
                      backgroundColor: Colors.grey[300],
                    ),
                    title: Text(
                        "${alluser[index]['first_name']} ${alluser[index]['last_name']}"),
                    subtitle: Text("${alluser[index]['email']}"),
                  ),
                );
              }
            }));
  }
}
