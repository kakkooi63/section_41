import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as myhttp;

class HttpPost extends StatefulWidget {
  HttpPost({Key? key}) : super(key: key);

  @override
  State<HttpPost> createState() => _HttpPostState();
}

class _HttpPostState extends State<HttpPost> {
  TextEditingController nama = TextEditingController();
  TextEditingController job = TextEditingController();

  String hasilrespon = "Belum ada data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http Post"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: nama,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Name"),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            controller: job,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Job"),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () async {
              var response = await myhttp.put(
                  Uri.parse("https://reqres.in/api/users"),
                  body: {"name ": nama.text, "job": job.text});

              Map<String, dynamic> data =
                  json.decode(response.body) as Map<String, dynamic>;

              setState(() {
                hasilrespon = "${data["name "]} - ${data["job"]}";
              });

              print(response.body);
            },
            child: Text("Submit"),
          ),
          SizedBox(
            height: 50,
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
          Text(hasilrespon),
        ],
      ),
    );
  }
}
