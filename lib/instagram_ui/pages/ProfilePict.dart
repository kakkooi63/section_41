import 'package:flutter/material.dart';

class ProfilePict extends StatelessWidget {
  const ProfilePict({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.red, Colors.amber],
            ),
          ),
        ),
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(60),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              image: DecorationImage(
                image: NetworkImage("https://loremflickr.com/640/360"),
                fit: BoxFit.cover,
              )),
        ),
      ],
    );
  }
}
