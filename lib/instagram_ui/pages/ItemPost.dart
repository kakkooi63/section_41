import 'package:flutter/material.dart';

class ItemPost extends StatelessWidget {
  ItemPost(this.value, this.title);
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          title,
          style: TextStyle(),
        ),
      ],
    );
  }
}
