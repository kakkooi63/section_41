// To parse this JSON data, do
//
//     final allprovince = allprovinceFromJson(jsonString);

import 'dart:convert';

Allprovince allprovinceFromJson(String str) =>
    Allprovince.fromJson(json.decode(str));

String allprovinceToJson(Allprovince data) => json.encode(data.toJson());

class Allprovince {
  Allprovince({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  factory Allprovince.fromJson(Map<String, dynamic> json) => Allprovince(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
  @override
  String toString() => name;
}
