// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class TextFileds extends StatelessWidget {
  final String text;
  final String suffixText;

  const TextFileds({Key key,  this.text,  this.suffixText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(),
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 17,
      child: TextFormField(

        decoration:
            InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              border: OutlineInputBorder(),
                suffixIcon: Text(text), icon: Text(suffixText),

            ),
      ),
    );
  }
}
