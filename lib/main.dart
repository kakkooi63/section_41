// import 'dart:ffi';

import 'package:flutter/material.dart';
import './section_4/BottomNavigation.dart';
import './section_4/BottomSet.dart';
import './section_4/Drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawerLatihan(),
    );
  }
}
