import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(HttpGet());
}

class HttpGet extends StatefulWidget {
  const HttpGet({Key? key}) : super(key: key);

  @override
  State<HttpGet> createState() => _HttpGetState();
}

class _HttpGetState extends State<HttpGet> {
  late String data;
  late String nama;
  late String email;
  late String id;

  @override
  void initState() {
    data = "";
    nama = "";
    email = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http Get"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(" ID : $data"),
            SizedBox(
              height: 10,
            ),
            Text("Nama : $nama"),
            SizedBox(
              height: 10,
            ),
            Text("Email : $email"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  var myhttp = await http
                      .get(Uri.parse("https://reqres.in/api/users/2"));
                  Map<String, dynamic> datajson =
                      json.decode(myhttp.body) as Map<String, dynamic>;
                  if (myhttp.statusCode == 200) {
                    setState(() {
                      data = datajson["data"]["id"].toString();
                      nama = "${datajson["data"]["first_name"]}"
                          " "
                          "${datajson["data"]["last_name"]}";
                      email = datajson["data"]["email"].toString();
                    });
                  } else {
                    print(" ERROR ${myhttp.statusCode}");
                  }
                },
                child: Text("GET data"))
          ],
        ),
      ),
    );
  }
}
