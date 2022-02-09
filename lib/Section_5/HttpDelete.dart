import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as myhttp;

class HttpDelete extends StatefulWidget {
  const HttpDelete({Key? key}) : super(key: key);

  @override
  _HttpDeleteState createState() => _HttpDeleteState();
}

class _HttpDeleteState extends State<HttpDelete> {
  String data = "belum ada data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http Delete"),
        actions: [
          IconButton(
            onPressed: () async {
              var response =
                  await myhttp.get(Uri.parse("https://reqres.in/api/users/2"));
              Map<String, dynamic> body =
                  json.decode(response.body) as Map<String, dynamic>;

              setState(() {
                data =
                    "${body['data']['first_name']} ${body['data']['last_name']}";
              });
            },
            icon: Icon(Icons.get_app),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(data),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () async {
                var response = await myhttp
                    .delete(Uri.parse("https://reqres.in/api/users/2"));
                print(response.statusCode);

                if (response.statusCode == 204) {
                  setState(() {
                    data = "berhasil dihapus";
                  });
                }
              },
              child: Text("Delete"))
        ],
      ),
    );
  }
}
