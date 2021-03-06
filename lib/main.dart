// import 'dart:ffi';

import 'package:coba/Section_5/FutureBuilder.dart';
import 'package:coba/Section_5/HttpDelete.dart';
import 'package:coba/Section_5/HttpGet.dart';
import 'package:coba/Section_5/HttpPut.dart';
import 'package:coba/Section_6/Faker.dart';
import 'package:coba/instagram_ui/pages/ProfileIg.dart';
import 'package:coba/latihan_section5/covid19.dart';
import 'package:coba/section_4/Navigation.dart';
import 'package:flutter/material.dart';
import './section_4/BottomNavigation.dart';
import './section_4/BottomSet.dart';
import './section_4/Drawer.dart';
import 'Section_5/HttpPost.dart';
import 'Section_6/Dropdown_Api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Faker123(),
    );
  }
}
