// To parse this JSON data, do
//
//     final panjar = panjarFromJson(jsonString);

import 'dart:convert';

Panjar panjarFromJson(String str) => Panjar.fromJson(json.decode(str));

String panjarToJson(Panjar data) => json.encode(data.toJson());

class Panjar {
  Panjar({
    required this.satkerName,
    required this.satkerCode,
    required this.prop,
    required this.propName,
    required this.kabkota,
    required this.kec,
    required this.kel,
    required this.nomorRadius,
    required this.nilai,
  });

  String satkerName;
  String satkerCode;
  String prop;
  String propName;
  String kabkota;
  String kec;
  String kel;
  String nomorRadius;
  String nilai;

  factory Panjar.fromJson(Map<String, dynamic> json) => Panjar(
        satkerName: json["satker_name"],
        satkerCode: json["satker_code"],
        prop: json["prop"],
        propName: json["prop_name"],
        kabkota: json["kabkota"],
        kec: json["kec"],
        kel: json["kel"],
        nomorRadius: json["nomor_radius"],
        nilai: json["nilai"],
      );

  Map<String, dynamic> toJson() => {
        "satker_name": satkerName,
        "satker_code": satkerCode,
        "prop": prop,
        "prop_name": propName,
        "kabkota": kabkota,
        "kec": kec,
        "kel": kel,
        "nomor_radius": nomorRadius,
        "nilai": nilai,
      };
}
