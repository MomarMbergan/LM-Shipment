//images list is here
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ImagesList extends StatelessWidget {
  const ImagesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // ignore: prefer_const_constructors
        CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 35,
            backgroundImage: AssetImage(
              'assets/DHL.png',
            )),
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 35,
          backgroundImage: AssetImage(
            'assets/LM-1.png',
          ),
        ),
        CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 35,
            backgroundImage: AssetImage(
              'assets/UPS.png',
            )),
        CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 35,
            backgroundImage: AssetImage(
              'assets/Fedex.png',
            )),
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 35,
          backgroundImage: AssetImage(
            'assets/USS.png',
          ),
        ),
      ],
    );
  }
}
