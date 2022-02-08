import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as myhttp;

void main() {
  runApp(HttpPut());
}

class HttpPut extends StatefulWidget {
  HttpPut({Key? key}) : super(key: key);

  @override
  State<HttpPut> createState() => _HttpPutState();
}

class _HttpPutState extends State<HttpPut> {
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();

  String hasilreponse = "belum ada data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http Put"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: email,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              label: Text("Email :"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: nama,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              label: Text("Nama :"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () async {
              var myresponse = await myhttp.patch(
                  Uri.parse("https://reqres.in/api/users/2"),
                  body: {"name": nama.text, "email": email.text});

              Map<String, dynamic> data =
                  json.decode(myresponse.body) as Map<String, dynamic>;

              setState(() {
                hasilreponse = "${data["email"]} - ${data["name"]}";
              });
            },
            child: Text("Put Data"),
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
          Text(hasilreponse),
        ],
      ),
    );
  }
}
