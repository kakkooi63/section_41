import 'dart:convert';

import 'package:coba/latihan/Models/Summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:http/http.dart' as http;
import 'pages/ItemSummary.dart';

class Summary extends StatelessWidget {
  late Listdata datasummary;
  Future GetSummary() async {
    var response = await http.get(
      Uri.parse("https://covid19.mathdro.id/api"),
    );

    Map<String, dynamic> data =
        json.decode(response.body) as Map<String, dynamic>;
    datasummary = Listdata.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Summary"),
      ),
      body: FutureBuilder(
          future: GetSummary(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Text("Loading data"),
              );
            }
            return Column(
              children: [
                ItemSummary("Confirmed", "${datasummary.confirmed.value}"),
                ItemSummary("Death", "${datasummary.deaths.value}"),
              ],
            );
          }),
    );
  }
}
