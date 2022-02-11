import 'dart:convert';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as myhttp;
import '../models/Section_6/Allprovince.dart';
import '../models/Section_6/City.dart';

class Dropdown_Api extends StatelessWidget {
  late String apikey =
      "7616216476fa3189f1a00cf6f44a602fde066e36c4480e4db296cace9edae1e6";
  String? idProvince;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropdowN api"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          DropdownSearch<Allprovince>(
              mode: Mode.DIALOG,
              showSearchBox: true,
              onChanged: (Value) => idProvince = Value?.id,
              dropdownBuilder: (context, selectedItem) =>
                  Text(selectedItem?.name ?? "Pilih Province"),
              popupItemBuilder: (context, item, isSelected) => ListTile(
                    title: Text(item.name),
                  ),
              onFind: (text) async {
                var response = await myhttp.get(Uri.parse(
                    "https://api.binderbyte.com/wilayah/provinsi?api_key=$apikey"));
                if (response.statusCode != 200) {
                  return [];
                }
                List allProvince = (json.decode(response.body)
                    as Map<String, dynamic>)["value"];
                List<Allprovince> allmodelProvince = [];
                allProvince.forEach((element) {
                  allmodelProvince.add(
                      Allprovince(id: element["id"], name: element["name"]));
                });
                return allmodelProvince;
              }),
          SizedBox(height: 20),
          DropdownSearch<City>(
              mode: Mode.DIALOG,
              showSearchBox: true,
              onChanged: (Value) => idProvince = Value?.id,
              dropdownBuilder: (context, selectedItem) =>
                  Text(selectedItem?.name ?? "Pilih City"),
              popupItemBuilder: (context, item, isSelected) => ListTile(
                    title: Text(item.name),
                  ),
              onFind: (text) async {
                var response = await myhttp.get(Uri.parse(
                    "https://api.binderbyte.com/wilayah/kabupaten?api_key=$apikey&id_provinsi=$idProvince"));
                if (response.statusCode != 200) {
                  return [];
                }
                List allCity = (json.decode(response.body)
                    as Map<String, dynamic>)["value"];
                List<City> allmodelCity = [];
                allCity.forEach((element) {
                  allmodelCity.add(City(
                      id: element["id"],
                      idProvinsi: element["id_provinsi"],
                      name: element["name"]));
                });
                return allmodelCity;
              }),
        ],
      ),
    );
  }
}
