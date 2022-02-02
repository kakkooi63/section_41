import 'package:flutter/material.dart';

class Galeri extends StatelessWidget {
  const Galeri({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 500,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemBuilder: (context, index) => Image(
        image: NetworkImage("https://loremflickr.com/640/360"),
        fit: BoxFit.cover,
      ),
    );
  }
}
