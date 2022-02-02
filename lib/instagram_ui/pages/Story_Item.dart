import 'package:flutter/material.dart';

class Story_Item extends StatelessWidget {
  Story_Item(this.title);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(37),
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  ),
                  image: DecorationImage(
                    image: NetworkImage("https://loremflickr.com/520/360"),
                    fit: BoxFit.cover,
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(title),
      ],
    );
  }
}
